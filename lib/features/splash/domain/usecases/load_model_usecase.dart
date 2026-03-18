import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../core/domain/entities/model_status.dart';
import '../../../../core/domain/repositories/translation_repository.dart';

@lazySingleton
class LoadModelUseCase implements UseCase<ModelStatus, NoParams> {
  final TranslationRepository repository;

  LoadModelUseCase(this.repository);

  @override
  Future<Either<Failure, ModelStatus>> call(NoParams params) async {
    return await repository.loadModel();
  }
}
