// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tonoa/app_shell/app_shell.dart';

import '../../helpers/helpers.dart';

void main() {
  group('AppShellPage', () {
    testWidgets('shows the five primary navigation destinations', (
      tester,
    ) async {
      await tester.pumpApp(AppShellPage(config: AppConfig.development()));

      expect(find.text('Home'), findsOneWidget);
      expect(find.text('Coach'), findsOneWidget);
      expect(find.text('Plan'), findsOneWidget);
      expect(find.text('Library'), findsOneWidget);
      expect(find.text('Profile'), findsOneWidget);
    });

    testWidgets('starts on the home destination', (tester) async {
      await tester.pumpApp(AppShellPage(config: AppConfig.development()));

      expect(find.text('Workspace foundation in progress'), findsOneWidget);
    });

    testWidgets('switches to the coach destination when tapped', (
      tester,
    ) async {
      await tester.pumpApp(AppShellPage(config: AppConfig.development()));

      await tester.tap(find.byIcon(Icons.auto_awesome_outlined));
      await tester.pumpAndSettle();

      expect(find.text('Coach workspace coming next'), findsOneWidget);
    });
  });
}
