import 'package:dartz/dartz.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/failures.dart';
import '../entities/translation_result.dart';
import '../entities/model_status.dart';

abstract class TranslationRepository {
  Future<Either<Failure, ModelStatus>> loadModel();
  
  Future<Either<Failure, TranslationResult>> translate({
    required String text,
    required TranslationDirection direction,
  });
  
  Stream<ModelStatus> get modelStatusStream;
  
  bool get isModelLoaded;
  
  void dispose();
}
