import 'dart:convert';
import 'package:flutter/services.dart';

class PronunciationService {
  static PronunciationService? _instance;
  Map<String, String>? _pronunciations;
  bool _isLoading = false;

  PronunciationService._();

  static PronunciationService get instance {
    _instance ??= PronunciationService._();
    return _instance!;
  }

  Future<void> initialize() async {
    if (_pronunciations != null || _isLoading) return;
    _isLoading = true;
    
    try {
      final jsonString = await rootBundle.loadString('assets/pronunciations.json');
      await Future.delayed(Duration.zero);
      final Map<String, dynamic> data = json.decode(jsonString);
      await Future.delayed(Duration.zero);
      _pronunciations = data.map((key, value) => MapEntry(key, value.toString()));
    } catch (e) {
      _pronunciations = {};
    } finally {
      _isLoading = false;
    }
  }

  String? getTranscription(String word) {
    if (_pronunciations == null) return null;
    final normalized = word.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
    return _pronunciations![normalized];
  }

  bool get isLoaded => _pronunciations != null;
}
