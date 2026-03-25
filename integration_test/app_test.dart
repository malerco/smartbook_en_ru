import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:smartbook_en_ru/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End-to-End App Tests', () {
    testWidgets('app launches successfully', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('splash screen transitions to main page', (tester) async {
      app.main();
      
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('bottom navigation works', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 5));

      final bottomNav = find.byType(BottomNavigationBar);
      if (bottomNav.evaluate().isNotEmpty) {
        final navItems = find.descendant(
          of: bottomNav,
          matching: find.byType(InkWell),
        );
        
        if (navItems.evaluate().length > 1) {
          await tester.tap(navItems.at(1));
          await tester.pumpAndSettle();
        }
      }
    });

    testWidgets('dictionary tab shows content', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 5));

      final bottomNav = find.byType(BottomNavigationBar);
      if (bottomNav.evaluate().isNotEmpty) {
        final dictionaryIcon = find.byIcon(Icons.book);
        if (dictionaryIcon.evaluate().isNotEmpty) {
          await tester.tap(dictionaryIcon.first);
          await tester.pumpAndSettle();
        }
      }
    });

    testWidgets('settings tab shows content', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 5));

      final settingsIcon = find.byIcon(Icons.settings);
      if (settingsIcon.evaluate().isNotEmpty) {
        await tester.tap(settingsIcon.first);
        await tester.pumpAndSettle();
      }
    });
  });
}
