import 'package:formz/formz.dart';

enum InstagramHandleValidationError { empty, invalidCharacters, tooLong }

class InstagramHandleInput
    extends FormzInput<String, InstagramHandleValidationError> {
  const InstagramHandleInput.pure() : super.pure('');

  const InstagramHandleInput.dirty([super.value = '']) : super.dirty();

  static final _handlePattern = RegExp(r'^@?[A-Za-z0-9._]+$');

  @override
  InstagramHandleValidationError? validator(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return InstagramHandleValidationError.empty;
    }

    if (trimmed.length > 30) {
      return InstagramHandleValidationError.tooLong;
    }

    return _handlePattern.hasMatch(trimmed)
        ? null
        : InstagramHandleValidationError.invalidCharacters;
  }
}
