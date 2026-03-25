import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/domain/entities/book_content.dart';
import '../../../../core/domain/repositories/books_repository.dart';
import '../../domain/usecases/get_book_content_usecase.dart';
import '../../domain/usecases/update_book_usecase.dart';

part 'book_reader_bloc.freezed.dart';
part 'book_reader_event.dart';
part 'book_reader_state.dart';

@injectable
class BookReaderBloc extends Bloc<BookReaderEvent, BookReaderState> {
  final GetBookContentUseCase _getBookContentUseCase;
  final UpdateBookUseCase _updateBookUseCase;
  final BooksRepository _booksRepository;

  BookReaderBloc(
    this._getBookContentUseCase,
    this._updateBookUseCase,
    this._booksRepository,
  ) : super(const BookReaderState.initial()) {
    on<BookReaderLoadRequested>(_onLoadRequested);
    on<BookReaderChapterChanged>(_onChapterChanged);
    on<BookReaderProgressUpdated>(_onProgressUpdated);
    on<BookReaderScrollPositionChanged>(_onScrollPositionChanged);
  }

  Future<void> _onLoadRequested(
    BookReaderLoadRequested event,
    Emitter<BookReaderState> emit,
  ) async {
    emit(const BookReaderState.loading());

    final book = _booksRepository.getBookById(event.bookId);
    if (book == null) {
      emit(const BookReaderState.error(message: 'Book not found'));
      return;
    }

    final result = await _getBookContentUseCase(event.bookId);

    result.fold(
      (failure) => emit(BookReaderState.error(message: failure.message)),
      (content) => emit(BookReaderState.loaded(
        book: book,
        content: content,
        currentChapterIndex: book.currentPage,
      )),
    );
  }

  Future<void> _onChapterChanged(
    BookReaderChapterChanged event,
    Emitter<BookReaderState> emit,
  ) async {
    final currentState = state;
    if (currentState is BookReaderLoaded) {
      final totalChapters = currentState.content.chapters.length;
      final newIndex = event.chapterIndex.clamp(0, totalChapters - 1);
      final progress = totalChapters > 0 ? (newIndex + 1) / totalChapters : 0.0;

      final updatedBook = currentState.book.copyWith(
        currentPage: newIndex,
        progress: progress,
        lastReadAt: DateTime.now(),
      );

      await _updateBookUseCase(updatedBook);

      emit(currentState.copyWith(
        book: updatedBook,
        currentChapterIndex: newIndex,
      ));
    }
  }

  Future<void> _onProgressUpdated(
    BookReaderProgressUpdated event,
    Emitter<BookReaderState> emit,
  ) async {
    final currentState = state;
    if (currentState is BookReaderLoaded) {
      final updatedBook = currentState.book.copyWith(
        progress: event.progress,
        lastReadAt: DateTime.now(),
      );

      await _updateBookUseCase(updatedBook);

      emit(currentState.copyWith(book: updatedBook));
    }
  }

  Future<void> _onScrollPositionChanged(
    BookReaderScrollPositionChanged event,
    Emitter<BookReaderState> emit,
  ) async {
    final currentState = state;
    if (currentState is BookReaderLoaded) {
      final updatedBook = currentState.book.copyWith(
        scrollPosition: event.scrollPosition,
        lastReadAt: DateTime.now(),
      );

      await _updateBookUseCase(updatedBook);

      emit(currentState.copyWith(book: updatedBook));
    }
  }
}
