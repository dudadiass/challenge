import 'package:bank/validations/deposit_account_menu_validations/value_deposit_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return 0 if the value deposit is bigger than 5000', () {
    final valueExpected = valueDepositValidation(5001);
    expect(valueExpected, isNotNull);
  });
  test('should return 0 if the value deposit is 0', () {
    final valueExpected = valueDepositValidation(0);
    expect(valueExpected, isNotNull);
  });
  test('should return 0 if the value deposit is less than 0', () {
    final valueExpected = valueDepositValidation(-1);
    expect(valueExpected, isNotNull);
  });

  test(
      'should return null if the value deposit is bigger than 0 and less than 5000 ',
      () {
    final valueExpected = valueDepositValidation(4999);
    expect(valueExpected, null);
  });
}
