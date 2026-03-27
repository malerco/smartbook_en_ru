import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/domain/entities/book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Open book reader
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: book.coverPath != null
                    ? Image.asset(
                        book.coverPath!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _buildDefaultCover(),
                      )
                    : _buildDefaultCover(),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            book.title,
            style: context.appTextTheme.textTheme.bodySmall!.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          if (book.author != null) ...[
            const SizedBox(height: 2),
            Text(
              book.author!,
              style: context.appTextTheme.textTheme.labelSmall!.copyWith(
                color: AppColors.textSecondary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (book.progress > 0) ...[
            const SizedBox(height: 4),
            LinearProgressIndicator(
              value: book.progress,
              backgroundColor: AppColors.surfaceLight,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
              minHeight: 2,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDefaultCover() {
    return Container(
      color: AppColors.surfaceLight,
      child: Center(
        child: Icon(
          Icons.book,
          color: AppColors.textSecondary.withOpacity(0.5),
          size: 40,
        ),
      ),
    );
  }
}
