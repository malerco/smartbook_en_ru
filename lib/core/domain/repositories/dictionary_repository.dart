import '../entities/dictionary_entry.dart';

abstract class DictionaryRepository {
  List<DictionaryEntry> getEntries();
  Future<void> saveEntries(List<DictionaryEntry> entries);
  Future<void> addEntry(DictionaryEntry entry);
  Future<void> updateEntry(DictionaryEntry entry);
  Future<void> deleteEntry(String entryId);
  Future<void> clearAll();
  List<DictionaryEntry> searchEntries(String query);
}
