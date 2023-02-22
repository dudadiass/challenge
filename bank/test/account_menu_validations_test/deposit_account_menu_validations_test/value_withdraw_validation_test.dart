import 'package:bank/validations/account_menu_validations/value_withdraw_validation.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('should return null if the value withdraw is less than value balance',
      () {
    final valueExpected = valueWithdraw(49, 50);
    expect(valueExpected, null);
  });
  test('should return null if the value withdraw is equals value balance', () {
    final valueExpected = valueWithdraw(50, 50);
    expect(valueExpected, null);
  });

  test(
      'should return String if the value withdraw is bigger than value balance',
      () {
    final valueExpected = valueWithdraw(51, 50);
    expect(valueExpected, isNotNull);
  });
}
