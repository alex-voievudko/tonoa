import 'package:formz/formz.dart';

enum OtpCodeValidationError { empty, invalidLength, invalidCharacters }

class OtpCodeInput extends FormzInput<String, OtpCodeValidationError> {
  const OtpCodeInput.pure() : super.pure('');

  const OtpCodeInput.dirty([super.value = '']) : super.dirty();

  static final _digitsPattern = RegExp(r'^\d{6}$');

  @override
  OtpCodeValidationError? validator(String value) {
    if (value.isEmpty) {
      return OtpCodeValidationError.empty;
    }

    if (value.length != 6) {
      return OtpCodeValidationError.invalidLength;
    }

    return _digitsPattern.hasMatch(value)
        ? null
        : OtpCodeValidationError.invalidCharacters;
  }
}
