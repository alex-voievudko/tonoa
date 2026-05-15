import 'package:tonoa/app/app.dart';
import 'package:tonoa/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
