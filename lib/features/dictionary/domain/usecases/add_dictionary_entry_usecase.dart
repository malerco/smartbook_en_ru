import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@lazySingleton
class AddDictionaryEntryUseCase {
  final DictionaryRepository _repository;

  AddDictionaryEntryUseCase(this._repository);

  Future<void> call(DictionaryEntry entry) async {
    await _repository.addEntry(entry);
  }
}
