import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/dictionary_repository.dart';

@lazySingleton
class ClearDictionaryUseCase {
  final DictionaryRepository _repository;

  ClearDictionaryUseCase(this._repository);

  Future<void> call() async {
    await _repository.clearAll();
  }
}
