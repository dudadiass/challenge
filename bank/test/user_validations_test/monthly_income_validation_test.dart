import 'package:bank/validations/user_validations/monthly_income_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the monthly income contains dot for cents', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('0.01');
    expect(monthlyIncomeExpected, isNotNull);
  });
  test(
      'should return String if the monthly income contains dot for cents and three decimals',
      () {
    final monthlyIncomeExpected = monthlyIncomeValidation('0.001');
    expect(monthlyIncomeExpected, isNotNull);
  });

  test('should return null if monthly income is null', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('null');
    expect(monthlyIncomeExpected, null);
  });
  test('should return null if the monthly income contains comma for cents', () {
    final montlyIncomeExpected = monthlyIncomeValidation('0,01');
    expect(montlyIncomeExpected, null);
  });
  test(
      'should return null if the monthly income has two or more decimal before comma',
      () {
    final monthlyIncomeExpected = monthlyIncomeValidation('00,00');
    expect(monthlyIncomeExpected, null);
  });

  test('should return null if the monthly income contains dot in real', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('5.500,00');
    expect(monthlyIncomeExpected, null);
  });
}
