import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../constants/app_constants.dart';
import '../../domain/entities/model_status.dart';
import '../../domain/entities/translation_result.dart';
import '../../domain/repositories/translation_repository.dart';
import '../../errors/failures.dart';
import '../../ml/mlkit_translation_model.dart';

@LazySingleton(as: TranslationRepository)
class TranslationRepositoryImpl implements TranslationRepository {
  final MlKitTranslationModel _translationModel;
  final StreamController<ModelStatus> _statusController =
      StreamController<ModelStatus>.broadcast();

  TranslationRepositoryImpl(this._translationModel);

  @override
  Stream<ModelStatus> get modelStatusStream => _statusController.stream;

  @override
  bool get isModelLoaded => _translationModel.isLoaded;

  @override
  Future<Either<Failure, ModelStatus>> loadModel() async {
    try {
      _translationModel.downloadProgress.listen((progress) {
        _statusController.add(ModelStatus(
          state: progress.progress >= 1.0 
              ? ModelLoadingState.loaded 
              : ModelLoadingState.loading,
          progress: progress.progress,
        ));
      });

      await _translationModel.initialize();
      
      final status = ModelStatus(
        state: ModelLoadingState.loaded,
        progress: 1.0,
      );
      return Right(status);
    } catch (e) {
      return Left(ModelLoadFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, TranslationResult>> translate({
    required String text,
    required TranslationDirection direction,
  }) async {
    try {
      if (!isModelLoaded) {
        return const Left(ModelNotLoadedFailure());
      }

      final isEnToRu = direction == TranslationDirection.enToRu;
      final translatedText = await _translationModel.translate(
        text,
        isEnToRu: isEnToRu,
      );

      return Right(TranslationResult(
        originalText: text,
        translatedText: translatedText,
        transcription: '',
        direction: direction,
        wordPairs: const [],
        timestamp: DateTime.now(),
      ));
    } catch (e) {
      return Left(TranslationFailure(e.toString()));
    }
  }

  @override
  void dispose() {
    _statusController.close();
    _translationModel.dispose();
  }
}
