import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../domain/usecases/get_books_usecase.dart';
import '../../domain/usecases/add_book_usecase.dart';
import '../../domain/usecases/update_book_usecase.dart';
import '../../domain/usecases/delete_book_usecase.dart';
import '../../domain/usecases/import_book_usecase.dart';

part 'books_bloc.freezed.dart';
part 'books_event.dart';
part 'books_state.dart';

@injectable
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final GetBooksUseCase _getBooksUseCase;
  final AddBookUseCase _addBookUseCase;
  final UpdateBookUseCase _updateBookUseCase;
  final DeleteBookUseCase _deleteBookUseCase;
  final ImportBookUseCase _importBookUseCase;

  BooksBloc(
    this._getBooksUseCase,
    this._addBookUseCase,
    this._updateBookUseCase,
    this._deleteBookUseCase,
    this._importBookUseCase,
  ) : super(const BooksState.initial()) {
    on<BooksLoadRequested>(_onLoadRequested);
    on<BooksAddRequested>(_onAddRequested);
    on<BooksDeleteRequested>(_onDeleteRequested);
    on<BooksUpdateRequested>(_onUpdateRequested);
    on<BooksImportRequested>(_onImportRequested);
  }

  Future<void> _onLoadRequested(
    BooksLoadRequested event,
    Emitter<BooksState> emit,
  ) async {
    emit(const BooksState.loading());
    try {
      final books = _getBooksUseCase();
      emit(BooksState.loaded(books: books));
    } catch (e) {
      emit(BooksState.error(message: e.toString()));
    }
  }

  Future<void> _onAddRequested(
    BooksAddRequested event,
    Emitter<BooksState> emit,
  ) async {
    try {
      await _addBookUseCase(event.book);
      add(const BooksEvent.loadRequested());
    } catch (e) {
      emit(BooksState.error(message: e.toString()));
    }
  }

  Future<void> _onDeleteRequested(
    BooksDeleteRequested event,
    Emitter<BooksState> emit,
  ) async {
    try {
      await _deleteBookUseCase(event.bookId);
      add(const BooksEvent.loadRequested());
    } catch (e) {
      emit(BooksState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateRequested(
    BooksUpdateRequested event,
    Emitter<BooksState> emit,
  ) async {
    try {
      await _updateBookUseCase(event.book);
      add(const BooksEvent.loadRequested());
    } catch (e) {
      emit(BooksState.error(message: e.toString()));
    }
  }

  Future<void> _onImportRequested(
    BooksImportRequested event,
    Emitter<BooksState> emit,
  ) async {
    final result = await _importBookUseCase(event.filePath);
    result.fold(
      (failure) => emit(BooksState.error(message: failure.message)),
      (_) => add(const BooksEvent.loadRequested()),
    );
  }
}
