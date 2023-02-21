import 'package:bank/validations/deposit_account_validations/menu_input_methods_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return 0 if the value deposit is bigger than 5000', () {
    final expiryDateExpected = valueBalanceValidation(5001);
    expect(expiryDateExpected, isNotNull);
  });
  test('should return 0 if the value deposit is 0', () {
    final expiryDateExpected = valueBalanceValidation(0);
    expect(expiryDateExpected, isNotNull);
  });
  test('should return 0 if the value deposit is less than 0', () {
    final expiryDateExpected = valueBalanceValidation(-1);
    expect(expiryDateExpected, isNotNull);
  });

  test(
      'should return null if the value deposit is bigger than 0 and less than 5000 ',
      () {
    final expiryDateExpected = valueBalanceValidation(4999);
    expect(expiryDateExpected, null);
  });
}
