import 'dart:convert';
import 'package:flutter/services.dart';

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
}
