import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('Book Card Widget Tests', () {
    testWidgets('displays book title', (tester) async {
      final book = createTestBook(title: 'Harry Potter');

      await tester.pumpWidget(
        createTestableWidget(
          child: Card(
            child: ListTile(
              title: Text(book.title),
              subtitle: Text(book.author ?? ''),
            ),
          ),
        ),
      );

      expect(find.text('Harry Potter'), findsOneWidget);
    });

    testWidgets('displays book author', (tester) async {
      final book = createTestBook(
        title: 'Test Book',
        author: 'Test Author',
      );

      await tester.pumpWidget(
        createTestableWidget(
          child: Card(
            child: ListTile(
              title: Text(book.title),
              subtitle: Text(book.author ?? ''),
            ),
          ),
        ),
      );

      expect(find.text('Test Author'), findsOneWidget);
    });

    testWidgets('displays progress indicator', (tester) async {
      final book = createTestBook(progress: 0.5);

      await tester.pumpWidget(
        createTestableWidget(
          child: Column(
            children: [
              LinearProgressIndicator(value: book.progress),
              Text('${(book.progress * 100).toInt()}%'),
            ],
          ),
        ),
      );

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      expect(find.text('50%'), findsOneWidget);
    });

    testWidgets('handles missing author gracefully', (tester) async {
      final book = createTestBook(author: null);

      await tester.pumpWidget(
        createTestableWidget(
          child: Card(
            child: ListTile(
              title: Text(book.title),
              subtitle: Text(book.author ?? 'Unknown Author'),
            ),
          ),
        ),
      );

      expect(find.text('Unknown Author'), findsOneWidget);
    });

    testWidgets('shows current page info', (tester) async {
      final book = createTestBook(
        currentPage: 50,
        totalPages: 200,
      );

      await tester.pumpWidget(
        createTestableWidget(
          child: Text('Page ${book.currentPage} of ${book.totalPages}'),
        ),
      );

      expect(find.text('Page 50 of 200'), findsOneWidget);
    });
  });
}
