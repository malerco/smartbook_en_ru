import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/app_localizations.dart';
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
          style: TextStyle(
            color: colors.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
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
                onAddBook: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(appLocale.addBook),
                      backgroundColor: colors.surface,
                    ),
                  );
                },
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
                    style: TextStyle(color: colors.textSecondary),
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
