import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@lazySingleton
class GetDictionaryEntriesUseCase {
  final DictionaryRepository _repository;

  GetDictionaryEntriesUseCase(this._repository);

  List<DictionaryEntry> call() {
    return _repository.getEntries();
  }
}
