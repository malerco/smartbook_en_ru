import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/services/book_parser/book_parser.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/books_bloc.dart';
import '../widgets/wooden_bookshelf.dart';
import '../widgets/empty_bookshelf.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BooksBloc>()..add(const BooksEvent.loadRequested()),
      child: const BooksView(),
    );
  }
}

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  Future<void> _pickAndImportBook(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: false,
    );

    if (result != null && result.files.isNotEmpty && context.mounted) {
      final filePath = result.files.first.path;
      if (filePath != null) {
        final extension = filePath.split('.').last.toLowerCase();
        if (BookFormat.supportedExtensions.contains(extension)) {
          context.read<BooksBloc>().add(BooksEvent.importRequested(filePath));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Unsupported format. Use: ${BookFormat.supportedExtensions.join(", ")}'),
            ),
          );
        }
      }
    }
  }

  void _openBook(BuildContext context, String bookId) {
    context.push('/book/$bookId');
  }

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    
    return Scaffold(
      backgroundColor: colors.bookshelfBackground,
      appBar: AppBar(
        backgroundColor: colors.bookshelfBackground,
        elevation: 0,
        title: Text(
          appLocale.booksTitle,
          style: context.appTextTheme.textTheme.headlineMedium,
        ),
        centerTitle: false,
      ),
      body: BlocConsumer<BooksBloc, BooksState>(
        listener: (context, state) {
          if (state is BooksError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: colors.error,
              ),
            );
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () => Center(
              child: CircularProgressIndicator(color: colors.primary),
            ),
            loading: () => Center(
              child: CircularProgressIndicator(color: colors.primary),
            ),
            loaded: (books) {
              return WoodenBookshelf(
                books: books,
                onAddBook: () => _pickAndImportBook(context),
                onBookTap: (bookId) => _openBook(context, bookId),
                onDeleteBook: (bookId) => context.read<BooksBloc>().add(BooksEvent.deleteRequested(bookId)),
              );
            },
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: colors.error,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    message,
                    style: context.appTextTheme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
