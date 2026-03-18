import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/services/books_service.dart';

part 'books_bloc.freezed.dart';
part 'books_event.dart';
part 'books_state.dart';

@injectable
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final BooksService _booksService;

  BooksBloc(this._booksService) : super(const BooksState.initial()) {
    on<BooksLoadRequested>(_onLoadRequested);
    on<BooksAddRequested>(_onAddRequested);
    on<BooksDeleteRequested>(_onDeleteRequested);
    on<BooksUpdateRequested>(_onUpdateRequested);
  }

  Future<void> _onLoadRequested(
    BooksLoadRequested event,
    Emitter<BooksState> emit,
  ) async {
    emit(const BooksState.loading());
    try {
      final books = _booksService.getBooks();
      books.sort((a, b) => b.addedAt.compareTo(a.addedAt));
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
      await _booksService.addBook(event.book);
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
      await _booksService.deleteBook(event.bookId);
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
      await _booksService.updateBook(event.book);
      add(const BooksEvent.loadRequested());
    } catch (e) {
      emit(BooksState.error(message: e.toString()));
    }
  }
}
