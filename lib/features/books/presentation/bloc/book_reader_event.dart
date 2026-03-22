part of 'book_reader_bloc.dart';

@freezed
class BookReaderEvent with _$BookReaderEvent {
  const factory BookReaderEvent.loadRequested({required String bookId}) = BookReaderLoadRequested;
  const factory BookReaderEvent.chapterChanged({required int chapterIndex}) = BookReaderChapterChanged;
  const factory BookReaderEvent.progressUpdated({required double progress}) = BookReaderProgressUpdated;
  const factory BookReaderEvent.scrollPositionChanged({required double scrollPosition}) = BookReaderScrollPositionChanged;
}
