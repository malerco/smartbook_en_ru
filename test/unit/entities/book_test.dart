import 'package:flutter_test/flutter_test.dart';
import 'package:smartbook_en_ru/core/domain/entities/book.dart';

void main() {
  group('Book', () {
    final testBook = Book(
      id: '1',
      title: 'Harry Potter',
      author: 'J.K. Rowling',
      filePath: '/books/harry_potter.epub',
      coverPath: '/covers/harry_potter.jpg',
      totalPages: 300,
      currentPage: 50,
      progress: 0.166,
      addedAt: DateTime(2024, 1, 1),
    );

    test('should create book with required fields', () {
      expect(testBook.id, '1');
      expect(testBook.title, 'Harry Potter');
      expect(testBook.author, 'J.K. Rowling');
      expect(testBook.filePath, '/books/harry_potter.epub');
    });

    test('should have default values', () {
      final book = Book(
        id: '2',
        title: 'Test Book',
        filePath: '/test.epub',
        addedAt: DateTime.now(),
      );

      expect(book.totalPages, 0);
      expect(book.currentPage, 0);
      expect(book.progress, 0.0);
      expect(book.scrollPosition, 0.0);
      expect(book.author, null);
      expect(book.coverPath, null);
    });

    group('copyWith', () {
      test('should copy with new currentPage', () {
        final copied = testBook.copyWith(currentPage: 100);

        expect(copied.currentPage, 100);
        expect(copied.id, testBook.id);
        expect(copied.title, testBook.title);
      });

      test('should copy with new progress', () {
        final copied = testBook.copyWith(progress: 0.5);

        expect(copied.progress, 0.5);
      });

      test('should copy with lastReadAt', () {
        final now = DateTime.now();
        final copied = testBook.copyWith(lastReadAt: now);

        expect(copied.lastReadAt, now);
      });
    });

    group('toJson', () {
      test('should convert to json correctly', () {
        final json = testBook.toJson();

        expect(json['id'], '1');
        expect(json['title'], 'Harry Potter');
        expect(json['author'], 'J.K. Rowling');
        expect(json['filePath'], '/books/harry_potter.epub');
        expect(json['totalPages'], 300);
        expect(json['currentPage'], 50);
      });

      test('should handle null lastReadAt', () {
        final json = testBook.toJson();

        expect(json['lastReadAt'], null);
      });
    });

    group('fromJson', () {
      test('should create book from json', () {
        final json = {
          'id': '3',
          'title': 'Test Book',
          'author': 'Test Author',
          'filePath': '/path/book.epub',
          'coverPath': '/path/cover.jpg',
          'totalPages': 200,
          'currentPage': 25,
          'progress': 0.125,
          'scrollPosition': 100.0,
          'addedAt': '2024-02-01T00:00:00.000',
        };

        final book = Book.fromJson(json);

        expect(book.id, '3');
        expect(book.title, 'Test Book');
        expect(book.totalPages, 200);
        expect(book.progress, 0.125);
      });

      test('should handle missing optional fields', () {
        final json = {
          'id': '4',
          'title': 'Minimal Book',
          'filePath': '/minimal.epub',
          'addedAt': '2024-01-01T00:00:00.000',
        };

        final book = Book.fromJson(json);

        expect(book.author, null);
        expect(book.coverPath, null);
        expect(book.totalPages, 0);
        expect(book.progress, 0.0);
      });
    });

    group('equality', () {
      test('should be equal for same properties', () {
        final book1 = Book(
          id: '1',
          title: 'Test',
          filePath: '/test.epub',
          addedAt: DateTime(2024, 1, 1),
        );

        final book2 = Book(
          id: '1',
          title: 'Test',
          filePath: '/test.epub',
          addedAt: DateTime(2024, 1, 1),
        );

        expect(book1, equals(book2));
      });

      test('should not be equal for different titles', () {
        final book1 = Book(
          id: '1',
          title: 'Test 1',
          filePath: '/test.epub',
          addedAt: DateTime(2024, 1, 1),
        );

        final book2 = Book(
          id: '1',
          title: 'Test 2',
          filePath: '/test.epub',
          addedAt: DateTime(2024, 1, 1),
        );

        expect(book1, isNot(equals(book2)));
      });
    });
  });
}
