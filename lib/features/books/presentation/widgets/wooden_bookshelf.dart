import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

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
    
    // Distribute books across shelves
    for (int i = 0; i < books.length; i += booksPerShelf) {
      final end = (i + booksPerShelf > books.length) ? books.length : i + booksPerShelf;
      final shelfBooks = books.sublist(i, end).cast<Book?>();
      // Pad with nulls for empty slots
      while (shelfBooks.length < booksPerShelf) {
        shelfBooks.add(null);
      }
      shelves.add(shelfBooks);
    }
    
    // Add empty shelf if needed or if no books
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
          return _BookshelfRow(
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

class _BookshelfRow extends StatelessWidget {
  final List<Book?> books;
  final VoidCallback onAddBook;
  final Function(String bookId)? onBookTap;
  final Function(String bookId)? onDeleteBook;
  final bool isLastShelf;

  const _BookshelfRow({
    required this.books,
    required this.onAddBook,
    this.onBookTap,
    this.onDeleteBook,
    required this.isLastShelf,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    
    return Column(
      children: [
        // Books row
        Container(
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: books.asMap().entries.map((entry) {
              final index = entry.key;
              final book = entry.value;
              
              if (book != null) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: _BookOnShelf(
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
                    child: _AddBookSlot(onTap: onAddBook),
                  ),
                );
              } else {
                return const Expanded(child: SizedBox());
              }
            }).toList(),
          ),
        ),
        // Wooden shelf
        _WoodenShelf(colors: colors),
      ],
    );
  }
}

class _WoodenShelf extends StatelessWidget {
  final AppColorScheme colors;

  const _WoodenShelf({required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colors.shelfWood,
            colors.shelfWoodDark,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Wood grain effect
          Positioned.fill(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: CustomPaint(
                painter: _WoodGrainPainter(colors.shelfWoodDark),
              ),
            ),
          ),
          // Top highlight
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.1),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.3, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WoodGrainPainter extends CustomPainter {
  final Color baseColor;

  _WoodGrainPainter(this.baseColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = baseColor.withOpacity(0.8)
      ..strokeWidth = 2;

    for (double y = 0; y < size.height; y += 6) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y + 5),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _BookOnShelf extends StatelessWidget {
  final Book book;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const _BookOnShelf({required this.book, this.onTap, this.onDelete});

  void _showContextMenu(BuildContext context, Offset position) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(position.dx, position.dy, 0, 0),
        Offset.zero & overlay.size,
      ),
      color: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colors.surfaceVariant,
          width: 1,
        ),
      ),
      elevation: 8,
      items: [
        PopupMenuItem<String>(
          value: 'delete',
          child: Row(
            children: [
              Icon(
                Icons.delete_outline,
                color: colors.error,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                appLocale.deleteBook,
                style: TextStyle(
                  color: colors.error,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'delete' && onDelete != null && context.mounted) {
        _showDeleteConfirmation(context, colors, appLocale);
      }
    });
  }

  void _showDeleteConfirmation(BuildContext context, AppColorScheme colors, AppLocalizations appLocale) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          appLocale.deleteBook,
          style: TextStyle(
            color: colors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          book.title,
          style: TextStyle(
            color: colors.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(
              appLocale.cancel,
              style: TextStyle(color: colors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              onDelete?.call();
            },
            child: Text(
              appLocale.confirm,
              style: TextStyle(
                color: colors.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    
    // Generate a color based on book title hash
    final bookColor = _getBookColor(book.title.hashCode);
    
    return GestureDetector(
      onTap: onTap,
      onLongPressStart: (details) => _showContextMenu(context, details.globalPosition),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Book cover
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    bookColor.withOpacity(0.9),
                    bookColor,
                    bookColor.withOpacity(0.8),
                  ],
                  stops: const [0.0, 0.1, 1.0],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(3, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Book spine highlight
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.transparent,
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  // Book cover image or title
                  if (book.coverPath != null && File(book.coverPath!).existsSync())
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(2),
                      ),
                      child: Image.file(
                        File(book.coverPath!),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (_, __, ___) => _buildTitleOnSpine(book.title),
                      ),
                    )
                  else
                    _buildTitleOnSpine(book.title),
                ],
              ),
            ),
          ),
          // Progress indicator
          if (book.progress > 0)
            Container(
              height: 3,
              margin: const EdgeInsets.only(top: 2),
              child: LinearProgressIndicator(
                value: book.progress,
                backgroundColor: colors.surfaceVariant,
                valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTitleOnSpine(String title) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: RotatedBox(
        quarterTurns: 3,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  color: Colors.black54,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Color _getBookColor(int hash) {
    final colors = [
      const Color(0xFF8B4513), // Saddle Brown
      const Color(0xFF2F4F4F), // Dark Slate Gray
      const Color(0xFF800020), // Burgundy
      const Color(0xFF1B4D3E), // Brunswick Green
      const Color(0xFF483D8B), // Dark Slate Blue
      const Color(0xFF704214), // Sepia
      const Color(0xFF355E3B), // Hunter Green
      const Color(0xFF722F37), // Wine
    ];
    return colors[hash.abs() % colors.length];
  }
}

class _AddBookSlot extends StatelessWidget {
  final VoidCallback onTap;

  const _AddBookSlot({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: colors.surface.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colors.primary.withOpacity(0.5),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_rounded,
              color: colors.primary,
              size: 32,
            ),
            const SizedBox(height: 4),
            Text(
              appLocale.addNewBook,
              style: TextStyle(
                color: colors.primary,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
