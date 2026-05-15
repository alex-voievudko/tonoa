import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  group('EmailInput', () {
    test('accepts a valid email', () {
      const input = EmailInput.dirty('hello@tonoa.ai');

      expect(input.isValid, isTrue);
      expect(input.displayError, isNull);
    });

    test('rejects malformed email', () {
      const input = EmailInput.dirty('hello@tonoa');

      expect(input.isValid, isFalse);
      expect(input.displayError, EmailValidationError.invalid);
    });
  });

  group('OtpCodeInput', () {
    test('accepts a 6 digit code', () {
      const input = OtpCodeInput.dirty('123456');

      expect(input.isValid, isTrue);
    });

    test('rejects short code', () {
      const input = OtpCodeInput.dirty('123');

      expect(input.isValid, isFalse);
      expect(input.displayError, OtpCodeValidationError.invalidLength);
    });
  });

  group('RequiredTextInput', () {
    test('trims whitespace before validation', () {
      const input = RequiredTextInput.dirty('  Tattoo artist  ');

      expect(input.isValid, isTrue);
      expect(input.value, '  Tattoo artist  ');
    });

    test('rejects blank values', () {
      const input = RequiredTextInput.dirty('   ');

      expect(input.isValid, isFalse);
      expect(input.displayError, RequiredTextValidationError.empty);
    });
  });

  group('InstagramHandleInput', () {
    test('accepts handle with leading at sign', () {
      const input = InstagramHandleInput.dirty('@tonoa.studio');

      expect(input.isValid, isTrue);
    });

    test('rejects spaces in handle', () {
      const input = InstagramHandleInput.dirty('@tonoa studio');

      expect(input.isValid, isFalse);
      expect(
        input.displayError,
        InstagramHandleValidationError.invalidCharacters,
      );
    });
  });

  group('OptionalUrlInput', () {
    test('accepts empty values', () {
      const input = OptionalUrlInput.dirty();

      expect(input.isValid, isTrue);
      expect(input.displayError, isNull);
    });

    test('accepts valid https url', () {
      const input = OptionalUrlInput.dirty('https://tonoa.ai/book');

      expect(input.isValid, isTrue);
    });

    test('rejects malformed urls', () {
      const input = OptionalUrlInput.dirty('tonoa ai');

      expect(input.isValid, isFalse);
      expect(input.displayError, OptionalUrlValidationError.invalid);
    });
  });
}
