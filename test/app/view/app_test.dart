// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:app_config/app_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tonoa/app/app.dart';
import 'package:tonoa/app_shell/app_shell.dart';

void main() {
  group('App', () {
    testWidgets('renders AppShellPage', (tester) async {
      await tester.pumpWidget(App(config: AppConfig.development()));
      expect(find.byType(AppShellPage), findsOneWidget);
    });
  });
}
