import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@injectable
class UpdateDictionaryEntryUseCase {
  final DictionaryRepository _repository;

  UpdateDictionaryEntryUseCase(this._repository);

  Future<void> call(DictionaryEntry entry) async {
    await _repository.updateEntry(entry);
  }
}
