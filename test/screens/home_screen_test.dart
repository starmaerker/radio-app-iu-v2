// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:radio_app_v2/screens/home/home_screen.dart';
import 'package:radio_app_v2/generated/l10n.dart';

void main() {
  group('', () {
    testWidgets('Test HomeScreen Widget with german locales',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
          locale: Locale('de'),
          home: HomeScreen()));
      await tester.pump();

      expect(find.text('Aktuell läuft:'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_right), findsOneWidget);
      expect(find.text('Aktuell läuft'), findsNothing);
    });
  });

  group('', () {
    testWidgets('Test HomeScreen Widget with english locales',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
          locale: Locale('en'),
          home: HomeScreen()));
      await tester.pump();

      expect(find.text('Previous Songs:'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_left), findsOneWidget);
      expect(find.text('Previous Songs'), findsNothing);
    });
  });
}
