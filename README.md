# Tonoa

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

AI Instagram content coach for creators and small businesses.

---

## Workspace

The repository now uses a multi-package workspace layout inspired by Very Good Ventures:

- `lib/` contains app composition, shell navigation, and feature presentation.
- `packages/` contains reusable local packages. PR 1 introduces `app_config`.
- `docs/architecture/` contains architecture notes and dependency rules.

See `docs/architecture/layered_architecture.md` for the current layering rules.

## Getting Started

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

Current MVP focus is iOS and Android.

---

## Workspace Commands

```sh
melos analyze
melos format
melos test
melos test:packages
```

Install workspace dependencies after pulling changes:

```sh
flutter pub get
cd packages/app_config && dart pub get
```

---

## Running Tests

To run all unit and widget tests use the following command:

```sh
$ flutter test
```

## Analysis

This project uses the [bloc_lint](https://pub.dev/packages/bloc_lint) package to enforce best practices using [bloc](https://pub.dev/packages/bloc).

To validate linter errors, run

```bash
dart run bloc_tools:bloc lint .
```

You can also validate with VSCode-based IDEs using the [official bloc extension](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc).

To learn more, visit https://bloclibrary.dev/lint/

## Working with Translations

This project follows the [official internationalization guide for Flutter][internationalization_link] using [ARB files][arb_documentation_link] for translations.

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb` and add a new key/value pair with the relevant description (optional):

```arb
{
    "@@locale": "en",
    "appTitle": "Tonoa",
    "@appTitle": {
        "description": "The application title shown in the top app bar."
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World greeting."
    }
}
```

1. Use the new string:

```dart
import 'package:tonoa/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`:

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

1. Add the translated strings to the new `.arb` file:

`app_es.arb`

```arb
{
    "@@locale": "es",
    "appTitle": "Tonoa",
    "@appTitle": {
        "description": "El titulo de la aplicacion que se muestra en la barra superior."
    },
    "helloWorld": "Hola Mundo",
    "@helloWorld": {
        "description": "Saludo Hola Mundo."
    }    
}
```

### Generating Translations

To use the latest translations changes, you will need to generate them:

```sh
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

Alternatively, run `flutter run` and code generation will take place automatically.

[coverage_badge]: coverage_badge.svg
[internationalization_link]: https://docs.flutter.dev/ui/internationalization
[arb_documentation_link]: https://github.com/google/app-resource-bundle
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
