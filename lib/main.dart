import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/di/injection.dart';
import 'core/domain/repositories/settings_repository.dart';
import 'core/l10n/app_localizations.dart';
import 'core/router/app_router.dart';
import 'core/services/offline_dictionary_service.dart';
import 'core/services/pronunciation_service.dart';
import 'core/theme/theme.dart';
import 'features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'features/settings/presentation/bloc/settings_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Hive.initFlutter();

  await configureDependencies();

  await getIt<PronunciationService>().initialize();
  await OfflineDictionaryService().initialize();

  runApp(const AITranslatorApp());
}

class AITranslatorApp extends StatelessWidget {
  const AITranslatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<SettingsBloc>()..add(const SettingsEvent.loadRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<DictionaryBloc>()..add(const DictionaryEvent.loadRequested()),
        ),
      ],
      child: const _AppView(),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        ThemeMode themeMode = ThemeMode.dark;
        Locale? locale;

        if (state is SettingsLoaded) {
          themeMode = _getThemeMode(state.themeMode);
          locale = Locale(state.appLanguage);
        }
        return MaterialApp.router(
          title: 'SmartBook',
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.lightTheme,
          darkTheme: ThemeProvider.darkTheme,
          themeMode: themeMode,
          locale: locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            if (locale != null) return locale;
            for (final supportedLocale in supportedLocales) {
              if (deviceLocale?.languageCode == supportedLocale.languageCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          routerConfig: appRouter,
        );
      },
    );
  }

  ThemeMode _getThemeMode(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.dark:
        return ThemeMode.dark;
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.system:
        return ThemeMode.system;
    }
  }
}
