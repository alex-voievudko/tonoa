import 'package:formz/formz.dart';

enum RequiredTextValidationError { empty }

class RequiredTextInput
    extends FormzInput<String, RequiredTextValidationError> {
  const RequiredTextInput.pure() : super.pure('');

  const RequiredTextInput.dirty([super.value = '']) : super.dirty();

  @override
  RequiredTextValidationError? validator(String value) {
    return value.trim().isEmpty ? RequiredTextValidationError.empty : null;
  }
}
