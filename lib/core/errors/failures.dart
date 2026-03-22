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

class BookParseFailure extends Failure {
  const BookParseFailure([String message = 'Failed to parse book'])
      : super(message);
}

class BookNotFoundFailure extends Failure {
  const BookNotFoundFailure([String message = 'Book not found'])
      : super(message);
}

class FilePickFailure extends Failure {
  const FilePickFailure([String message = 'Failed to pick file'])
      : super(message);
}

class UnsupportedFormatFailure extends Failure {
  const UnsupportedFormatFailure([String message = 'Unsupported book format'])
      : super(message);
}
