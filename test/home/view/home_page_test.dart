// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tonoa/home/home.dart';
import 'package:tonoa/l10n/l10n.dart';

import '../../helpers/helpers.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders product title', (tester) async {
      await tester.pumpApp(HomePage(config: AppConfig.development()));
      expect(find.text('Tonoa'), findsOneWidget);
    });

    testWidgets('renders temporary workspace message', (tester) async {
      await tester.pumpApp(HomePage(config: AppConfig.development()));
      expect(find.text('Workspace foundation in progress'), findsOneWidget);
    });

    testWidgets('renders flavor label', (tester) async {
      await tester.pumpApp(HomePage(config: AppConfig.development()));
      expect(find.text('Flavor: development'), findsOneWidget);
    });

    testWidgets('uses localized app title in app bar', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: HomePage(config: AppConfig.staging()),
        ),
      );

      expect(find.text('Tonoa'), findsWidgets);
      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}
