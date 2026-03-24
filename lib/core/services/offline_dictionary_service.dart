import 'dart:convert';
import 'package:flutter/services.dart';

class DictionaryLookupResult {
  final String matchedWord;
  final List<String> translations;
  
  DictionaryLookupResult({
    required this.matchedWord,
    required this.translations,
  });
}

class OfflineDictionaryService {
  static final OfflineDictionaryService _instance = OfflineDictionaryService._internal();
  factory OfflineDictionaryService() => _instance;
  OfflineDictionaryService._internal();

  Map<String, List<String>>? _enRuDict;
  Map<String, List<String>>? _ruEnDict;
  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  Future<void> initialize() async {
    if (_isLoaded) return;

    try {
      final enRuJson = await rootBundle.loadString('assets/dictionary/en_ru.json');
      final ruEnJson = await rootBundle.loadString('assets/dictionary/ru_en.json');

      final enRuRaw = json.decode(enRuJson) as Map<String, dynamic>;
      final ruEnRaw = json.decode(ruEnJson) as Map<String, dynamic>;

      _enRuDict = enRuRaw.map((k, v) => MapEntry(k, List<String>.from(v as List)));
      _ruEnDict = ruEnRaw.map((k, v) => MapEntry(k, List<String>.from(v as List)));

      _isLoaded = true;
    } catch (e) {
      _isLoaded = false;
      rethrow;
    }
  }

  List<String>? translateEnToRu(String word) {
    if (!_isLoaded || _enRuDict == null) return null;
    final normalized = word.toLowerCase().trim();
    return _enRuDict![normalized];
  }

  List<String>? translateRuToEn(String word) {
    if (!_isLoaded || _ruEnDict == null) return null;
    final normalized = word.toLowerCase().trim();
    return _ruEnDict![normalized];
  }

  List<String>? translate(String word, {required bool isEnToRu}) {
    return isEnToRu ? translateEnToRu(word) : translateRuToEn(word);
  }

  /// Lookup with stemming - returns the matched word form and translations
  DictionaryLookupResult? translateWithStemming(String word, {required bool isEnToRu}) {
    final dict = isEnToRu ? _enRuDict : _ruEnDict;
    if (!_isLoaded || dict == null) return null;
    
    final normalized = word.toLowerCase().trim();
    
    // Try exact match first
    if (dict.containsKey(normalized)) {
      return DictionaryLookupResult(
        matchedWord: normalized,
        translations: dict[normalized]!,
      );
    }
    
    // Try common English word forms (stemming)
    if (isEnToRu) {
      for (final form in _getWordForms(normalized)) {
        if (dict.containsKey(form)) {
          return DictionaryLookupResult(
            matchedWord: form,
            translations: dict[form]!,
          );
        }
      }
    }
    
    return null;
  }

  /// Generate possible base forms of an English word
  List<String> _getWordForms(String word) {
    final forms = <String>[];
    
    // -ed endings (walked -> walk, scented -> scent)
    if (word.endsWith('ed')) {
      forms.add(word.substring(0, word.length - 2)); // walked -> walk
      forms.add(word.substring(0, word.length - 1)); // loved -> lov (then try love)
      if (word.length > 3 && word[word.length - 3] == word[word.length - 4]) {
        // stopped -> stop (double consonant)
        forms.add(word.substring(0, word.length - 3));
      }
      // Add 'e' back: scented -> scent, but also try scene
      final withoutEd = word.substring(0, word.length - 2);
      forms.add('${withoutEd}e'); // lov -> love
    }
    
    // -ing endings
    if (word.endsWith('ing')) {
      forms.add(word.substring(0, word.length - 3)); // walking -> walk
      forms.add('${word.substring(0, word.length - 3)}e'); // loving -> love
      if (word.length > 4 && word[word.length - 4] == word[word.length - 5]) {
        forms.add(word.substring(0, word.length - 4)); // stopping -> stop
      }
    }
    
    // -s/-es endings (plural/verb)
    if (word.endsWith('ies')) {
      forms.add('${word.substring(0, word.length - 3)}y'); // flies -> fly
    } else if (word.endsWith('es')) {
      forms.add(word.substring(0, word.length - 2)); // boxes -> box
      forms.add(word.substring(0, word.length - 1)); // loves -> love
    } else if (word.endsWith('s') && word.length > 2) {
      forms.add(word.substring(0, word.length - 1)); // walks -> walk
    }
    
    // -er/-est endings (comparative/superlative)
    if (word.endsWith('er')) {
      forms.add(word.substring(0, word.length - 2)); // faster -> fast
      forms.add('${word.substring(0, word.length - 2)}e'); // nicer -> nice
      if (word.length > 3 && word[word.length - 3] == word[word.length - 4]) {
        forms.add(word.substring(0, word.length - 3)); // bigger -> big
      }
    }
    if (word.endsWith('est')) {
      forms.add(word.substring(0, word.length - 3)); // fastest -> fast
      forms.add('${word.substring(0, word.length - 3)}e'); // nicest -> nice
    }
    
    // -ly endings (adverbs)
    if (word.endsWith('ly')) {
      forms.add(word.substring(0, word.length - 2)); // quickly -> quick
      if (word.endsWith('ily')) {
        forms.add('${word.substring(0, word.length - 3)}y'); // happily -> happy
      }
    }
    
    return forms;
  }
}
