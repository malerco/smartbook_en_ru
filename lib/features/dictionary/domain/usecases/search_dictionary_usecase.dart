import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@lazySingleton
class SearchDictionaryUseCase {
  final DictionaryRepository _repository;

  SearchDictionaryUseCase(this._repository);

  List<DictionaryEntry> call(String query) {
    return _repository.searchEntries(query);
  }
}
