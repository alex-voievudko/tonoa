import 'package:formz/formz.dart';

enum OptionalUrlValidationError { invalid }

class OptionalUrlInput extends FormzInput<String, OptionalUrlValidationError> {
  const OptionalUrlInput.pure() : super.pure('');

  const OptionalUrlInput.dirty([super.value = '']) : super.dirty();

  @override
  OptionalUrlValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return null;
    }

    final uri = Uri.tryParse(trimmed);
    if (uri == null ||
        !uri.hasScheme ||
        (uri.scheme != 'http' && uri.scheme != 'https')) {
      return OptionalUrlValidationError.invalid;
    }

    return uri.host.isNotEmpty ? null : OptionalUrlValidationError.invalid;
  }
}
