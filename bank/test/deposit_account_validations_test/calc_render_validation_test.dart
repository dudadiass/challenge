import 'package:bank/validations/deposit_account_menu_validations/render_validation.dart';
import 'package:test/test.dart';

void main() {
  test(
      'should return null if the days are less than 366 and balance is bigger than 0',
      () {
    final daysExpected = calcRenderValidation(90, 40);
    expect(daysExpected, null);
  });
  test('should return String if the days are bigger than 366', () {
    final daysExpected = calcRenderValidation(390, 40);
    expect(daysExpected, isNotNull);
  });

  test(
      'should return String if the days are bigger than the 366 and the balance is equals 0',
      () {
    final daysExpected = calcRenderValidation(390, 0);
    expect(daysExpected, isNotNull);
  });

  test('should return String if the balance is equals 0', () {
    final daysExpected = calcRenderValidation(300, 0);
    expect(daysExpected, isNotNull);
  });

  test('should return String if the balance is less than 0', () {
    final daysExpected = calcRenderValidation(300, -1);
    expect(daysExpected, isNotNull);
  });
}
