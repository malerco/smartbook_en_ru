import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TranslationHiveCache {
  static const String _boxName = 'translation_cache';
  Box<String>? _box;

  Future<Box<String>> get _cacheBox async {
    if (_box != null && _box!.isOpen) {
      return _box!;
    }
    _box = await Hive.openBox<String>(_boxName);
    return _box!;
  }

  String _generateKey(String bookId, int chapterIndex, String direction) {
    return '${bookId}_${chapterIndex}_$direction';
  }

  Future<void> cacheChapterTranslations({
    required String bookId,
    required int chapterIndex,
    required String direction,
    required Map<int, String> translations,
  }) async {
    final box = await _cacheBox;
    final key = _generateKey(bookId, chapterIndex, direction);
    
    final jsonMap = translations.map((k, v) => MapEntry(k.toString(), v));
    final jsonString = jsonEncode(jsonMap);
    
    await box.put(key, jsonString);
  }

  Future<Map<int, String>?> getChapterTranslations({
    required String bookId,
    required int chapterIndex,
    required String direction,
  }) async {
    final box = await _cacheBox;
    final key = _generateKey(bookId, chapterIndex, direction);
    
    final jsonString = box.get(key);
    if (jsonString == null) return null;
    
    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    return jsonMap.map((k, v) => MapEntry(int.parse(k), v as String));
  }

  Future<bool> hasChapterCache({
    required String bookId,
    required int chapterIndex,
    required String direction,
  }) async {
    final box = await _cacheBox;
    final key = _generateKey(bookId, chapterIndex, direction);
    return box.containsKey(key);
  }

  Future<void> clearBookCache(String bookId) async {
    final box = await _cacheBox;
    final keysToDelete = box.keys
        .where((key) => key.toString().startsWith('${bookId}_'))
        .toList();
    await box.deleteAll(keysToDelete);
  }

  Future<void> clearAllCache() async {
    final box = await _cacheBox;
    await box.clear();
  }
}
