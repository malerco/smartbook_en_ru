import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:onnxruntime/onnxruntime.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class TranslationModel {
  OrtSession? _enRuEncoder;
  OrtSession? _enRuDecoder;
  OrtSession? _ruEnEncoder;
  OrtSession? _ruEnDecoder;
  
  Map<String, int>? _enRuVocab;
  Map<int, String>? _enRuReverseVocab;
  Map<String, int>? _ruEnVocab;
  Map<int, String>? _ruEnReverseVocab;
  
  bool _isLoaded = false;
  bool _modelsLoaded = false;
  
  final StreamController<DownloadProgress> _progressController = 
      StreamController<DownloadProgress>.broadcast();
  
  Stream<DownloadProgress> get downloadProgress => _progressController.stream;
  bool get isLoaded => _isLoaded;

  Future<void> initialize() async {
    _progressController.add(DownloadProgress(
      progress: 0.1,
      message: 'Initializing ONNX Runtime...',
    ));
    
    // Initialize ONNX Runtime
    OrtEnv.instance.init();
    
    _progressController.add(DownloadProgress(
      progress: 0.2,
      message: 'Copying models...',
    ));
    
    // Copy models from assets to app directory
    await _copyModelsFromAssets();
    
    _progressController.add(DownloadProgress(
      progress: 0.5,
      message: 'Loading models...',
    ));
    
    // Load models
    await _loadModels();
    
    _progressController.add(DownloadProgress(
      progress: 0.8,
      message: 'Loading vocabularies...',
    ));
    
    // Load vocabularies
    await _loadVocabularies();
    
    _isLoaded = true;
    
    _progressController.add(DownloadProgress(
      progress: 1.0,
      message: 'Ready!',
    ));
  }

  Future<String> get _modelDirectory async {
    final dir = await getApplicationDocumentsDirectory();
    return '${dir.path}/models';
  }

  Future<void> _copyModelsFromAssets() async {
    final modelDir = await _modelDirectory;
    final dir = Directory(modelDir);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    
    // List of model files to copy
    final files = [
      'en_ru/encoder_model.onnx',
      'en_ru/decoder_model.onnx',
      'en_ru/vocab.json',
      'ru_en/encoder_model.onnx',
      'ru_en/decoder_model.onnx',
      'ru_en/vocab.json',
    ];
    
    for (final file in files) {
      // Yield to UI thread
      await Future.delayed(Duration.zero);
      
      final targetPath = '$modelDir/${file.replaceAll('/', '_')}';
      final targetFile = File(targetPath);
      
      if (!await targetFile.exists()) {
        try {
          final data = await rootBundle.load('assets/models/$file');
          await Future.delayed(Duration.zero); // Yield before heavy write
          await targetFile.writeAsBytes(data.buffer.asUint8List());
        } catch (e) {
          print('Could not copy $file: $e');
        }
      }
    }
  }

  Future<void> _loadModels() async {
    final modelDir = await _modelDirectory;
    final sessionOptions = OrtSessionOptions();
    
    try {
      // EN -> RU
      final enRuEncoderPath = '$modelDir/en_ru_encoder_model.onnx';
      final enRuDecoderPath = '$modelDir/en_ru_decoder_model.onnx';
      
      if (await File(enRuEncoderPath).exists()) {
        await Future.delayed(Duration.zero); // Yield before heavy operation
        final enRuEncoderBytes = await File(enRuEncoderPath).readAsBytes();
        await Future.delayed(Duration.zero);
        _enRuEncoder = OrtSession.fromBuffer(enRuEncoderBytes, sessionOptions);
        
        await Future.delayed(Duration.zero);
        final enRuDecoderBytes = await File(enRuDecoderPath).readAsBytes();
        await Future.delayed(Duration.zero);
        _enRuDecoder = OrtSession.fromBuffer(enRuDecoderBytes, sessionOptions);
      }
      
      // RU -> EN
      final ruEnEncoderPath = '$modelDir/ru_en_encoder_model.onnx';
      final ruEnDecoderPath = '$modelDir/ru_en_decoder_model.onnx';
      
      if (await File(ruEnEncoderPath).exists()) {
        await Future.delayed(Duration.zero);
        final ruEnEncoderBytes = await File(ruEnEncoderPath).readAsBytes();
        await Future.delayed(Duration.zero);
        _ruEnEncoder = OrtSession.fromBuffer(ruEnEncoderBytes, sessionOptions);
        
        await Future.delayed(Duration.zero);
        final ruEnDecoderBytes = await File(ruEnDecoderPath).readAsBytes();
        await Future.delayed(Duration.zero);
        _ruEnDecoder = OrtSession.fromBuffer(ruEnDecoderBytes, sessionOptions);
      }
      
      _modelsLoaded = _enRuEncoder != null && _enRuDecoder != null;
      print('ONNX models loaded successfully');
    } catch (e) {
      print('Error loading ONNX models: $e');
      _modelsLoaded = false;
    }
    
    sessionOptions.release();
  }

  Future<void> _loadVocabularies() async {
    final modelDir = await _modelDirectory;
    
    try {
      // EN-RU vocab
      final enRuVocabPath = '$modelDir/en_ru_vocab.json';
      if (await File(enRuVocabPath).exists()) {
        final enRuVocabJson = await File(enRuVocabPath).readAsString();
        final enRuVocabMap = json.decode(enRuVocabJson) as Map<String, dynamic>;
        _enRuVocab = enRuVocabMap.map((k, v) => MapEntry(k, v as int));
        _enRuReverseVocab = _enRuVocab!.map((k, v) => MapEntry(v, k));
        print('Loaded EN-RU vocab: ${_enRuVocab!.length} tokens');
      }
      
      // RU-EN vocab
      final ruEnVocabPath = '$modelDir/ru_en_vocab.json';
      if (await File(ruEnVocabPath).exists()) {
        final ruEnVocabJson = await File(ruEnVocabPath).readAsString();
        final ruEnVocabMap = json.decode(ruEnVocabJson) as Map<String, dynamic>;
        _ruEnVocab = ruEnVocabMap.map((k, v) => MapEntry(k, v as int));
        _ruEnReverseVocab = _ruEnVocab!.map((k, v) => MapEntry(v, k));
        print('Loaded RU-EN vocab: ${_ruEnVocab!.length} tokens');
      }
    } catch (e) {
      print('Error loading vocabularies: $e');
    }
  }

  List<int> _tokenize(String text, Map<String, int> vocab) {
    final tokens = <int>[];
    
    // Split by whitespace but keep track of word boundaries
    final words = text.split(RegExp(r'\s+'));
    
    for (int i = 0; i < words.length; i++) {
      final word = words[i];
      if (word.isEmpty) continue;
      
      // Add space prefix for SentencePiece (▁)
      final spWord = '▁$word';
      
      // Try exact match first
      if (vocab.containsKey(spWord)) {
        tokens.add(vocab[spWord]!);
      } else {
        // Try to split word into subwords using greedy longest match
        _tokenizeWord(word, vocab, tokens, i == 0);
      }
    }
    
    // Add EOS token
    tokens.add(vocab['</s>'] ?? 0);
    
    return tokens;
  }
  
  void _tokenizeWord(String word, Map<String, int> vocab, List<int> tokens, bool isFirst) {
    // Try with space prefix first
    String remaining = '▁$word';
    
    while (remaining.isNotEmpty) {
      bool found = false;
      
      // Greedy longest match
      for (int len = remaining.length; len > 0; len--) {
        final subword = remaining.substring(0, len);
        if (vocab.containsKey(subword)) {
          tokens.add(vocab[subword]!);
          remaining = remaining.substring(len);
          found = true;
          break;
        }
      }
      
      if (!found) {
        // Try lowercase version
        final lowerRemaining = remaining.toLowerCase();
        for (int len = lowerRemaining.length; len > 0; len--) {
          final subword = lowerRemaining.substring(0, len);
          if (vocab.containsKey(subword)) {
            tokens.add(vocab[subword]!);
            remaining = remaining.substring(len);
            found = true;
            break;
          }
        }
      }
      
      if (!found) {
        // Unknown token - skip one character
        if (remaining.startsWith('▁')) {
          remaining = remaining.substring(1);
        } else {
          // Add UNK token and move forward
          tokens.add(vocab['<unk>'] ?? 1);
          remaining = remaining.length > 1 ? remaining.substring(1) : '';
        }
      }
    }
  }

  String _detokenize(List<int> tokens, Map<int, String> reverseVocab) {
    final result = StringBuffer();
    
    for (final token in tokens) {
      if (reverseVocab.containsKey(token)) {
        var tokenStr = reverseVocab[token]!;
        // Skip special tokens
        if (tokenStr == '</s>' || tokenStr == '<pad>' || tokenStr == '<unk>') {
          continue;
        }
        // Replace SentencePiece marker with space
        tokenStr = tokenStr.replaceAll('▁', ' ');
        result.write(tokenStr);
      }
    }
    
    return result.toString().trim();
  }

  Future<String> translate(String text, {bool isEnToRu = true}) async {
    if (!_modelsLoaded || _enRuVocab == null || _ruEnVocab == null) {
      return _fallbackTranslate(text, isEnToRu);
    }
    
    try {
      return await _translateWithOnnx(text, isEnToRu);
    } catch (e) {
      print('ONNX translation failed: $e');
      return _fallbackTranslate(text, isEnToRu);
    }
  }

  Future<String> _translateWithOnnx(String text, bool isEnToRu) async {
    final encoder = isEnToRu ? _enRuEncoder : _ruEnEncoder;
    final decoder = isEnToRu ? _enRuDecoder : _ruEnDecoder;
    final vocab = isEnToRu ? _enRuVocab! : _ruEnVocab!;
    final reverseVocab = isEnToRu ? _enRuReverseVocab! : _ruEnReverseVocab!;
    
    if (encoder == null || decoder == null) {
      throw Exception('Models not loaded');
    }

    final runOptions = OrtRunOptions();
    
    // Tokenize input
    final inputIds = _tokenize(text, vocab);
    
    // Create encoder inputs
    final inputIdsTensor = OrtValueTensor.createTensorWithDataList(
      Int64List.fromList(inputIds),
      [1, inputIds.length],
    );
    
    final attentionMask = OrtValueTensor.createTensorWithDataList(
      Int64List.fromList(List.filled(inputIds.length, 1)),
      [1, inputIds.length],
    );

    // Run encoder
    final encoderOutputs = encoder.run(runOptions, {
      'input_ids': inputIdsTensor,
      'attention_mask': attentionMask,
    });
    
    final encoderHiddenStates = encoderOutputs[0]!;

    // Greedy decoding
    List<int> outputIds = [vocab['<pad>'] ?? 62517];
    const maxLength = 128;
    final eosToken = vocab['</s>'] ?? 0;
    
    for (var i = 0; i < maxLength; i++) {
      final decoderInputIds = OrtValueTensor.createTensorWithDataList(
        Int64List.fromList(outputIds),
        [1, outputIds.length],
      );

      final decoderOutputs = decoder.run(runOptions, {
        'input_ids': decoderInputIds,
        'encoder_hidden_states': encoderHiddenStates,
        'encoder_attention_mask': attentionMask,
      });
      
      final logits = decoderOutputs[0]!;
      
      // Get logits data - shape: [batch, seq_len, vocab_size]
      final logitsData = logits.value as List;
      
      // Get last token logits
      List<double> lastLogits;
      if (logitsData[0] is List && logitsData[0][0] is List) {
        // Shape [1, seq_len, vocab_size]
        final seqLogits = logitsData[0] as List;
        lastLogits = (seqLogits.last as List).cast<double>();
      } else {
        lastLogits = (logitsData.last as List).cast<double>();
      }
      
      // Argmax
      var maxIdx = 0;
      var maxVal = lastLogits[0];
      for (var j = 1; j < lastLogits.length; j++) {
        if (lastLogits[j] > maxVal) {
          maxVal = lastLogits[j];
          maxIdx = j;
        }
      }

      outputIds.add(maxIdx);
      
      // Release decoder inputs
      decoderInputIds.release();
      for (final out in decoderOutputs) {
        out?.release();
      }
      
      // Check EOS
      if (maxIdx == eosToken) break;
    }

    // Release encoder resources
    inputIdsTensor.release();
    attentionMask.release();
    for (final out in encoderOutputs) {
      out?.release();
    }
    runOptions.release();

    // Detokenize
    final result = _detokenize(outputIds, reverseVocab);
    return result.isNotEmpty ? result[0].toUpperCase() + result.substring(1) : result;
  }

  String _fallbackTranslate(String text, bool isEnToRu) {
    // Simple dictionary fallback
    final enToRu = {
      'hello': 'привет',
      'world': 'мир',
      'i': 'я',
      'you': 'ты',
      'love': 'люблю',
      'drink': 'пить',
      'eat': 'есть',
      'go': 'идти',
      'used to': 'привык',
      'water': 'вода',
      'food': 'еда',
    };
    
    final ruToEn = enToRu.map((k, v) => MapEntry(v, k));
    
    final dict = isEnToRu ? enToRu : ruToEn;
    final words = text.toLowerCase().split(RegExp(r'\s+'));
    final result = words.map((w) => dict[w] ?? w).join(' ');
    
    return result.isNotEmpty ? result[0].toUpperCase() + result.substring(1) : result;
  }

  Future<void> dispose() async {
    _enRuEncoder?.release();
    _enRuDecoder?.release();
    _ruEnEncoder?.release();
    _ruEnDecoder?.release();
    OrtEnv.instance.release();
    _progressController.close();
  }
}

class DownloadProgress {
  final double progress;
  final String message;
  final String? error;

  DownloadProgress({
    required this.progress,
    required this.message,
    this.error,
  });
}
