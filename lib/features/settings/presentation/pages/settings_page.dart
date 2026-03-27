import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/settings_bloc.dart';
import '../widgets/font_size_selector.dart';
import '../widgets/language_toggle.dart';
import '../widgets/line_spacing_selector.dart';
import '../widgets/settings_section.dart';
import '../widgets/theme_toggle.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    final textStyles = context.appTextTheme.textTheme;

    return Scaffold(
      backgroundColor: colors.settingsBackground,
      appBar: AppBar(
        backgroundColor: colors.settingsBackground,
        elevation: 0,
        title: Text(
          appLocale.settingsTitle,
          style: context.appTextTheme.textTheme.displaySmall,
        ),
        centerTitle: false,
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(
              child: CircularProgressIndicator(color: colors.primary),
            ),
            loaded: (themeMode, fontSize, lineSpacing, fontFamily, primaryLanguage, appLanguage, appVersion) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                children: [
                  SettingsSection(
                    title: appLocale.appTheme,
                    isMultipleRows: false,
                    child: Expanded(
                      child: ThemeToggle(currentTheme: themeMode),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SettingsSection(
                    title: appLocale.appLanguage,
                    isMultipleRows: false,
                    child: Expanded(
                      child: LanguageToggle(
                        currentLanguage: appLanguage,
                        isAppLanguage: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SettingsSection(
                    title: appLocale.fontSize,
                    child: FontSizeSelector(currentSize: fontSize),
                  ),
                  const SizedBox(height: 20),
                  SettingsSection(
                    title: appLocale.lineSpacing,
                    child: LineSpacingSelector(currentSpacing: lineSpacing),
                  ),
                  const SizedBox(height: 20),
                  SettingsSection(
                    title: appLocale.appVersion,
                    isMultipleRows: false,
                    child: Text(
                      appVersion,
                      style: textStyles.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
