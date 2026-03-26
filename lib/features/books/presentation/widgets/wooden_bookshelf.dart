import 'package:flutter/material.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/theme/theme.dart';
import 'bookshelf/bookshelf_row.dart';

class WoodenBookshelf extends StatelessWidget {
  final List<Book?> books;
  final VoidCallback onAddBook;
  final Function(String bookId)? onBookTap;
  final Function(String bookId)? onDeleteBook;

  const WoodenBookshelf({
    super.key,
    required this.books,
    required this.onAddBook,
    this.onBookTap,
    this.onDeleteBook,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final booksPerShelf = 3;
    final shelves = <List<Book?>>[];

    for (int i = 0; i < books.length; i += booksPerShelf) {
      final end = (i + booksPerShelf > books.length) ? books.length : i + booksPerShelf;
      final shelfBooks = books.sublist(i, end).cast<Book?>();
      while (shelfBooks.length < booksPerShelf) {
        shelfBooks.add(null);
      }
      shelves.add(shelfBooks);
    }

    if (shelves.isEmpty || shelves.last.every((b) => b != null)) {
      shelves.add(List.filled(booksPerShelf, null));
    }

    return Container(
      decoration: BoxDecoration(
        gradient: colors.backgroundGradient,
      ),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 8, bottom: 100),
        itemCount: shelves.length,
        itemBuilder: (context, index) {
          return BookshelfRow(
            books: shelves[index],
            onAddBook: onAddBook,
            onBookTap: onBookTap,
            onDeleteBook: onDeleteBook,
            isLastShelf: index == shelves.length - 1,
          );
        },
      ),
    );
  }
}
