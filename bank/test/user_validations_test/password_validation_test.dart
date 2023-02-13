import 'package:bank/validations/user_validations/password_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the password has less than eight numbers', () {
    final passwordExpected = passwordValidation('1234567');
    expect(passwordExpected, isNotNull);
  });
  test('should return String if the password has more than eight numbers', () {
    final passwordExpected = passwordValidation('123456789');
    expect(passwordExpected, isNotNull);
  });
  test('should return String if the password contains symbols or letters', () {
    final passwordExpected = passwordValidation('as#%as12');
    expect(passwordExpected, isNotNull);
  });

  test('should return null if the password contains eight numbers', () {
    final passwordExpected = passwordValidation('02345678');
    expect(passwordExpected, null);
  });
}
