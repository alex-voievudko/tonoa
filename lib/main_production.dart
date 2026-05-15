import 'package:app_config/app_config.dart';
import 'package:tonoa/app/app.dart';
import 'package:tonoa/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App(config: AppConfig.production()));
}
