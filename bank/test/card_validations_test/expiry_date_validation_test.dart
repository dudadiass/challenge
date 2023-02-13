import 'package:bank/validations/card_validations/expiry_date_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the expiry date has not slash', () {
    final expiryDateExpected = expiryDateValidation('12022');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return String if the expiry date started with zero', () {
    final expiryDateExpected = expiryDateValidation('04/2022');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return String if the expiry date month is more than twelven',
      () {
    final expiryDateExpected = expiryDateValidation('13/2022');
    expect(expiryDateExpected, isNotNull);
  });

  test('should return String if the expiry date year is lass than actual year',
      () {
    final expiryDateExpected = expiryDateValidation('5/2022');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return String if the expiry date year is more than six years',
      () {
    final expiryDateExpected = expiryDateValidation('1/2031');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return null if the expiry date year is more than actual year',
      () {
    final expiryDateExpected = expiryDateValidation('1/2024');
    expect(expiryDateExpected, null);
  });
}
