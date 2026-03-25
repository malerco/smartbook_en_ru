import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/chapter_translation_repository.dart';
import '../../../../core/errors/exceptions.dart';

@injectable
class GetWordTranslationsUseCase {
  final ChapterTranslationRepository _repository;

  GetWordTranslationsUseCase(this._repository);

  Future<Either<List<String>, AppException>> call({
    required String word,
    required String sourceLanguage,
    required String targetLanguage,
  }) async {
    return _repository.getWordTranslations(
      word: word,
      sourceLanguage: sourceLanguage,
      targetLanguage: targetLanguage,
    );
  }
}
