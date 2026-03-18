import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ModelLoadFailure extends Failure {
  const ModelLoadFailure([String message = 'Failed to load translation model'])
      : super(message);
}

class TranslationFailure extends Failure {
  const TranslationFailure([String message = 'Translation failed'])
      : super(message);
}

class ModelNotLoadedFailure extends Failure {
  const ModelNotLoadedFailure([String message = 'Model not loaded yet'])
      : super(message);
}
