import 'package:flutter/material.dart';
import '../../../../core/theme/theme.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isMultipleRows;

  const SettingsSection({
    super.key,
    required this.title,
    required this.child,
    this.isMultipleRows = true,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextTheme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: textStyles.bodyMedium,
              ),
            ),
            if (!isMultipleRows) ...[
              const SizedBox(width: 30),
              child
            ],
          ],
        ),
        if (isMultipleRows) ...[
          const SizedBox(height: 10),
          child,
        ],
      ],
    );
  }
}
