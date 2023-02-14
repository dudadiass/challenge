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
  test('should return String if the expiry date month is more than twelve', () {
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
  test('should return null if the expiry date month is smaller than now month',
      () {
    final expiryDateExpected = expiryDateValidation('1/2023');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return String if the expiry date is equals date now', () {
    final expiryDateExpected = expiryDateValidation('2/2023');
    expect(expiryDateExpected, isNotNull);
  });
  test('should return null if the expiry date year is bigger than now year',
      () {
    final expiryDateExpected = expiryDateValidation('2/2024');
    expect(expiryDateExpected, null);
  });
  test('should return null if the expiry date month is bigger than now month',
      () {
    final expiryDateExpected = expiryDateValidation('3/2023');
    expect(expiryDateExpected, null);
  });
}
