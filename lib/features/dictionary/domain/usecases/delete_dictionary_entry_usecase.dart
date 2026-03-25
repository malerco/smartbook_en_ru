import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@lazySingleton
class DeleteDictionaryEntryUseCase {
  final DictionaryRepository _repository;

  DeleteDictionaryEntryUseCase(this._repository);

  Future<void> call(String entryId) async {
    await _repository.deleteEntry(entryId);
  }
}
