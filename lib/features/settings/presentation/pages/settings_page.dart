import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/services/settings_service.dart';
import '../../../../main.dart';
import '../bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsBloc>()..add(const SettingsEvent.loadRequested()),
      child: const SettingsView(),
    );
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          appLocale.settingsTitle,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (themeMode, fontSize, lineSpacing, fontFamily, primaryLanguage) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildSectionHeader(context, appLocale.appearance),
                  _buildThemeSelector(context, appLocale, themeMode),
                  const SizedBox(height: 16),
                  _buildSectionHeader(context, appLocale.mainLanguage),
                  _buildLanguageSelector(context, appLocale, primaryLanguage),
                  const SizedBox(height: 16),
                  _buildSectionHeader(context, appLocale.reading),
                  _buildFontSizeSelector(context, appLocale, fontSize),
                  const SizedBox(height: 12),
                  _buildLineSpacingSelector(context, appLocale, lineSpacing),
                  const SizedBox(height: 32),
                  _buildAboutSection(context, appLocale),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  Widget _buildThemeSelector(BuildContext context, AppLocalizations appLocale, AppThemeMode currentTheme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appLocale.theme,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildThemeOption(
                context,
                appLocale.themeDark,
                Icons.dark_mode,
                AppThemeMode.dark,
                currentTheme,
              ),
              const SizedBox(width: 12),
              _buildThemeOption(
                context,
                appLocale.themeLight,
                Icons.light_mode,
                AppThemeMode.light,
                currentTheme,
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    String label,
    IconData icon,
    AppThemeMode mode,
    AppThemeMode currentMode,
  ) {
    final isSelected = mode == currentMode;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.read<SettingsBloc>().add(SettingsEvent.themeChanged(mode));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary.withOpacity(0.2) : AppColors.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected ? AppColors.primary : AppColors.surfaceLight,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? AppColors.primary : AppColors.textSecondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageSelector(BuildContext context, AppLocalizations appLocale, String currentLanguage) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildLanguageOption(context, appLocale.english, 'en', currentLanguage),
              const SizedBox(width: 12),
              _buildLanguageOption(context, appLocale.russian, 'ru', currentLanguage),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String label,
    String languageCode,
    String currentLanguage,
  ) {
    final isSelected = languageCode == currentLanguage;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.read<SettingsBloc>().add(SettingsEvent.primaryLanguageChanged(languageCode));
          AITranslatorApp.setLocale(context, Locale(languageCode));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary.withOpacity(0.2) : AppColors.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected ? AppColors.primary : AppColors.surfaceLight,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFontSizeSelector(BuildContext context, AppLocalizations appLocale, FontSizeOption currentSize) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appLocale.fontSize,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: FontSizeOption.values.map((size) {
              final isSelected = size == currentSize;
              return GestureDetector(
                onTap: () {
                  context.read<SettingsBloc>().add(SettingsEvent.fontSizeChanged(size));
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primary.withOpacity(0.2) : AppColors.background,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected ? AppColors.primary : AppColors.surfaceLight,
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Aa',
                      style: TextStyle(
                        color: isSelected ? AppColors.primary : AppColors.textSecondary,
                        fontSize: _getFontPreviewSize(size),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  double _getFontPreviewSize(FontSizeOption option) {
    switch (option) {
      case FontSizeOption.small:
        return 12;
      case FontSizeOption.medium:
        return 16;
      case FontSizeOption.large:
        return 20;
      case FontSizeOption.extraLarge:
        return 24;
    }
  }

  Widget _buildLineSpacingSelector(BuildContext context, AppLocalizations appLocale, LineSpacingOption currentSpacing) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appLocale.lineSpacing,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildSpacingOption(context, appLocale.lineSpacingCompact, LineSpacingOption.compact, currentSpacing),
              const SizedBox(width: 12),
              _buildSpacingOption(context, appLocale.lineSpacingNormal, LineSpacingOption.normal, currentSpacing),
              const SizedBox(width: 12),
              _buildSpacingOption(context, appLocale.lineSpacingRelaxed, LineSpacingOption.relaxed, currentSpacing),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpacingOption(
    BuildContext context,
    String label,
    LineSpacingOption option,
    LineSpacingOption currentOption,
  ) {
    final isSelected = option == currentOption;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.read<SettingsBloc>().add(SettingsEvent.lineSpacingChanged(option));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary.withOpacity(0.2) : AppColors.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected ? AppColors.primary : AppColors.surfaceLight,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context, AppLocalizations appLocale) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.info_outline, color: AppColors.textSecondary),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  appLocale.aboutApp,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.textSecondary),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.code, color: AppColors.textSecondary),
              const SizedBox(width: 12),
              Text(
                '${appLocale.version}: 1.0.0',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
