import 'package:flutter/material.dart';
import '../../../../../core/domain/entities/book.dart';
import 'add_book_slot.dart';
import 'book_on_shelf.dart';
import 'wooden_shelf.dart';

class BookshelfRow extends StatelessWidget {
  final List<Book?> books;
  final VoidCallback onAddBook;
  final Function(String bookId)? onBookTap;
  final Function(String bookId)? onDeleteBook;
  final bool isLastShelf;

  const BookshelfRow({
    super.key,
    required this.books,
    required this.onAddBook,
    this.onBookTap,
    this.onDeleteBook,
    required this.isLastShelf,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: books.asMap().entries.map((entry) {
              final index = entry.key;
              final book = entry.value;

              if (book != null) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: BookOnShelf(
                      book: book,
                      onTap: onBookTap != null ? () => onBookTap!(book.id) : null,
                      onDelete: onDeleteBook != null ? () => onDeleteBook!(book.id) : null,
                    ),
                  ),
                );
              } else if (isLastShelf && index == books.where((b) => b != null).length) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AddBookSlot(onTap: onAddBook),
                  ),
                );
              } else {
                return const Expanded(child: SizedBox());
              }
            }).toList(),
          ),
        ),
        const WoodenShelf(),
      ],
    );
  }
}
