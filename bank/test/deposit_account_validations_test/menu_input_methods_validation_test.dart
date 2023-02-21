import 'package:bank/validations/deposit_account_validations/menu_input_methods_validation.dart';
import 'package:test/test.dart';

void main() {
  test('valor passou do limite', () {
    final expiryDateExpected = valueBalanceValidation(5001);
    expect(expiryDateExpected, 0);
  });

  test('valor esta no limite', () {
    final expiryDateExpected = valueBalanceValidation(4999);
    expect(expiryDateExpected, null);
  });
}
