import 'package:bank/validations/user_validations/phone_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the phone has not a DDD neither number 9', () {
    final phoneExpected = phoneValidation('97826946');
    expect(phoneExpected, isNotNull);
  });
  test('should return String if the phone has not a DDD', () {
    final phoneExpected = phoneValidation('997826946');
    expect(phoneExpected, isNotNull);
  });

  test('should return String if the phone has not a number 9', () {
    final phoneExpected = phoneValidation('4197826946');
    expect(phoneExpected, isNotNull);
  });
  test('should return null if the phone has DDD and number 9', () {
    final phoneExpected = phoneValidation('41997826946');
    expect(phoneExpected, null);
  });
  test('should return null if the phone has space betwen DDD others numbers',
      () {
    final phoneExpected = phoneValidation('41 123451234');
    expect(phoneExpected, null);
  });
  test(
      'should return null if the phone has space between DDD and others numbers and has dash between numbers',
      () {
    final phoneExpected = phoneValidation('41 99782-6946');
    expect(phoneExpected, null);
  });
  test(
      'should return null if the DDD phone has parentheses and contains space btween DDD and others numbers',
      () {
    final phoneExpected = phoneValidation('(41) 99782-6946');
    expect(phoneExpected, null);
  });
}
