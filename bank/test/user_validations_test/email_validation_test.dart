import 'package:bank/validations/user_validations/email_validation.dart';
import 'package:test/test.dart';

void main() {
  test(
      'should return String if the email contains government addresses in domain',
      () {
    final emailExpected = emailValidation('whatever@gov.uk');
    expect(emailExpected, isNotNull);
  });
  test('should return String if the email started with number(s)', () {
    final emailExpected = emailValidation('1whatever@outlook.com');
    expect(emailExpected, isNotNull);
  });
  test('should return String if the email contains symbols in username', () {
    final emailExpected = emailValidation('whatever!%#@gmail.com');
    expect(emailExpected, isNotNull);
  });
  test('should return String if the email contains number in domain', () {
    final emailExpected = emailValidation('whatever@outlook2com1br');
    expect(emailExpected, isNotNull);
  });

  test('should return null if the email contains domain outlook', () {
    final emailExpected = emailValidation('whatever@outlook.com.br');
    expect(emailExpected, null);
  });

  test('should return null if the email contains domain gmail', () {
    final emailExpected = emailValidation('whatever@gmail.com');
    expect(emailExpected, null);
  });
  test('should return null if the email contains hotmail', () {
    final emailExpected = emailValidation('what.ever@hotmail.com');
    expect(emailExpected, null);
  });
  test('should return null if the email contains underscore', () {
    final emailExpected = emailValidation('what_ever@outlook.com');
    expect(emailExpected, null);
  });
  test('should return null if the email contains dot', () {
    final emailExpected = emailValidation('what.ever@gmail.com.br');
    expect(emailExpected, null);
  });

  test('should return null if the email started with letra maiuscula', () {
    final emailExpected = emailValidation('Whatever@hotmail.com.br');
    expect(emailExpected, null);
  });
  test('should return null if the email contains username with numbers', () {
    final emailExpected = emailValidation('w23hatever@hotmail.com.br');
    expect(emailExpected, null);
  });
}
