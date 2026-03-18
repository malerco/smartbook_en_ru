import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/entities/dictionary_entry.dart';

@lazySingleton
class DictionaryService {
  static const String _dictionaryKey = 'dictionary_entries';
  final SharedPreferences _prefs;

  DictionaryService(this._prefs);

  List<DictionaryEntry> getEntries() {
    final jsonString = _prefs.getString(_dictionaryKey);
    if (jsonString == null) return [];
    
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList
        .map((e) => DictionaryEntry.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> saveEntries(List<DictionaryEntry> entries) async {
    final jsonList = entries.map((e) => e.toJson()).toList();
    await _prefs.setString(_dictionaryKey, json.encode(jsonList));
  }

  Future<void> addEntry(DictionaryEntry entry) async {
    final entries = getEntries();
    entries.insert(0, entry);
    await saveEntries(entries);
  }

  Future<void> updateEntry(DictionaryEntry entry) async {
    final entries = getEntries();
    final index = entries.indexWhere((e) => e.id == entry.id);
    if (index != -1) {
      entries[index] = entry;
      await saveEntries(entries);
    }
  }

  Future<void> deleteEntry(String entryId) async {
    final entries = getEntries();
    entries.removeWhere((e) => e.id == entryId);
    await saveEntries(entries);
  }

  Future<void> clearAll() async {
    await _prefs.remove(_dictionaryKey);
  }

  List<DictionaryEntry> searchEntries(String query) {
    final entries = getEntries();
    final lowerQuery = query.toLowerCase();
    return entries.where((e) {
      return e.word.toLowerCase().contains(lowerQuery) ||
          e.translation.toLowerCase().contains(lowerQuery);
    }).toList();
  }
}
