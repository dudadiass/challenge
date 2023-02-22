import 'package:bank/validations/deposit_account_menu_validations/buy_debit_card_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return null if the value withdraw is less than value balance',
      () {
    final valueExpected = buyDebitCard(49, 50);
    expect(valueExpected, null);
  });
  test('should return null if the value withdraw is equals value balance', () {
    final valueExpected = buyDebitCard(50, 50);
    expect(valueExpected, null);
  });

  test(
      'should return String if the value withdraw is bigger than value balance',
      () {
    final valueExpected = buyDebitCard(51, 50);
    expect(valueExpected, isNotNull);
  });
}
