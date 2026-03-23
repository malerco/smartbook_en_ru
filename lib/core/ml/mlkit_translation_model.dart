import 'dart:async';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:injectable/injectable.dart';

enum ModelLoadingStep {
  checkingModels,
  downloadingLanguageModels,
  downloadingRussianModel,
  initializingTranslators,
  ready,
}

@lazySingleton
class MlKitTranslationModel {
  OnDeviceTranslator? _enRuTranslator;
  OnDeviceTranslator? _ruEnTranslator;
  
  final OnDeviceTranslatorModelManager _modelManager = 
      OnDeviceTranslatorModelManager();
  
  bool _isLoaded = false;
  bool _enRuModelDownloaded = false;
  bool _ruEnModelDownloaded = false;
  
  final StreamController<DownloadProgress> _progressController = 
      StreamController<DownloadProgress>.broadcast();
  
  Stream<DownloadProgress> get downloadProgress => _progressController.stream;
  bool get isLoaded => _isLoaded;

  Future<void> initialize() async {
    _progressController.add(DownloadProgress(
      progress: 0.1,
      step: ModelLoadingStep.checkingModels,
    ));
    
    // Check if models are already downloaded
    _enRuModelDownloaded = await _modelManager.isModelDownloaded(TranslateLanguage.russian.bcpCode);
    final enDownloaded = await _modelManager.isModelDownloaded(TranslateLanguage.english.bcpCode);
    
    _progressController.add(DownloadProgress(
      progress: 0.2,
      step: ModelLoadingStep.downloadingLanguageModels,
    ));
    
    // Download models if needed
    if (!enDownloaded) {
      await _modelManager.downloadModel(TranslateLanguage.english.bcpCode);
    }
    
    _progressController.add(DownloadProgress(
      progress: 0.4,
      step: ModelLoadingStep.downloadingRussianModel,
    ));
    
    if (!_enRuModelDownloaded) {
      await _modelManager.downloadModel(TranslateLanguage.russian.bcpCode);
      _enRuModelDownloaded = true;
    }
    _ruEnModelDownloaded = _enRuModelDownloaded;
    
    _progressController.add(DownloadProgress(
      progress: 0.7,
      step: ModelLoadingStep.initializingTranslators,
    ));
    
    // Create translators
    _enRuTranslator = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.english,
      targetLanguage: TranslateLanguage.russian,
    );
    
    _ruEnTranslator = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.russian,
      targetLanguage: TranslateLanguage.english,
    );
    
    _isLoaded = true;
    
    _progressController.add(DownloadProgress(
      progress: 1.0,
      step: ModelLoadingStep.ready,
    ));
  }

  Future<String> translate(String text, {bool isEnToRu = true}) async {
    if (!_isLoaded) {
      throw Exception('Translation model not loaded');
    }
    
    if (text.trim().isEmpty) {
      return '';
    }
    
    final translator = isEnToRu ? _enRuTranslator : _ruEnTranslator;
    if (translator == null) {
      throw Exception('Translator not initialized');
    }
    
    try {
      final result = await translator.translateText(text);
      return result;
    } catch (e) {
      throw Exception('Translation failed: $e');
    }
  }

  Future<void> dispose() async {
    await _enRuTranslator?.close();
    await _ruEnTranslator?.close();
    _progressController.close();
  }
  
  Future<void> deleteModels() async {
    await _modelManager.deleteModel(TranslateLanguage.english.bcpCode);
    await _modelManager.deleteModel(TranslateLanguage.russian.bcpCode);
    _enRuModelDownloaded = false;
    _ruEnModelDownloaded = false;
    _isLoaded = false;
  }
}

class DownloadProgress {
  final double progress;
  final ModelLoadingStep step;
  
  DownloadProgress({
    required this.progress,
    required this.step,
  });
}
