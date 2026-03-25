import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/translation_result.dart';
import '../repositories/translation_repository.dart';

@lazySingleton
class TranslateTextUseCase implements UseCase<TranslationResult, TranslateParams> {
  final TranslationRepository repository;

  TranslateTextUseCase(this.repository);

  @override
  Future<Either<Failure, TranslationResult>> call(TranslateParams params) async {
    return await repository.translate(
      text: params.text,
      direction: params.direction,
    );
  }
}

class TranslateParams extends Equatable {
  final String text;
  final TranslationDirection direction;

  const TranslateParams({
    required this.text,
    required this.direction,
  });

  @override
  List<Object?> get props => [text, direction];
}
