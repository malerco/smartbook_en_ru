import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constants/app_theme.dart';
import 'core/di/injection.dart';
import 'core/l10n/app_localizations.dart';
import 'core/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF0F172A),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  await configureDependencies();

  final prefs = await SharedPreferences.getInstance();
  final savedLocaleCode = prefs.getString('app_language');
  final savedLocale = savedLocaleCode != null ? Locale(savedLocaleCode) : null;

  runApp(AITranslatorApp(initialLocale: savedLocale));
}

class AITranslatorApp extends StatefulWidget {
  final Locale? initialLocale;

  const AITranslatorApp({super.key, this.initialLocale});

  static void setLocale(BuildContext context, Locale locale) {
    final state = context.findAncestorStateOfType<_AITranslatorAppState>();
    state?.setLocale(locale);
  }

  @override
  State<AITranslatorApp> createState() => _AITranslatorAppState();
}

class _AITranslatorAppState extends State<AITranslatorApp> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _locale = widget.initialLocale;
  }

  void setLocale(Locale locale) async {
    setState(() {
      _locale = locale;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('app_language', locale.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SmartBook',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      localeResolutionCallback: (locale, supportedLocales) {
        if (_locale != null) return _locale;
        for (final supportedLocale in supportedLocales) {
          if (locale?.languageCode == supportedLocale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      routerConfig: appRouter,
    );
  }
}
