import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:tonoa/app_shell/app_shell.dart';
import 'package:tonoa/l10n/l10n.dart';
import 'package:tonoa/theme/theme.dart';

class App extends StatelessWidget {
  const App({required this.config, super.key});

  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: AppShellPage(config: config),
    );
  }
}
