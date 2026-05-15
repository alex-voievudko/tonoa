import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([super.value = '']) : super.dirty();

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  @override
  EmailValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return EmailValidationError.empty;
    }

    return _emailPattern.hasMatch(value.trim())
        ? null
        : EmailValidationError.invalid;
  }
}
