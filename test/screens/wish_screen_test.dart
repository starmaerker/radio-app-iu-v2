// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:radio_app_v2/main.dart';
import 'package:radio_app_v2/screens/feedback/feedback_screen.dart';
import 'package:radio_app_v2/screens/home/home_screen.dart';
import 'package:radio_app_v2/screens/music/wish_screen.dart';
import 'package:radio_app_v2/screens/tabs/tabs_screen.dart';
import 'package:radio_app_v2/generated/l10n.dart';

void main() {
  testWidgets('Test WishScreen Widget with german locales',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        locale: Locale('de'),
        home: WishScreen()));
    await tester.pump();

    // Verify that our counter starts at 0.
    //expect(find.text('Wunschtitel'), findsOneWidget);
    //expect(find.byIcon(Icons.arrow_left), findsOneWidget);
    //expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // expect(find.text('Bitte geben Sie einen Text ein.'), findsNothing);
    expect(find.byKey(Key('buttonKey')), findsOneWidget);
    //await tester.tap(find.byKey(Key('buttonKey')));
    // await tester.pump();expect(find.text('Bitte geben Sie einen Text ein.'), findsWidgets);

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
