import 'package:bank/validations/user_validations/name_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the first name contains only two letters', () {
    final nameExpected = nameValidation('An');
    expect(nameExpected, isNotNull);
  });
  test('should return String if the last name is not found', () {
    final nameExpected = nameValidation('Ana');
    expect(nameExpected, isNotNull);
  });
  test('should return String if the name contains number(s)', () {
    final nameExpected = nameValidation('Ana Whatever 2');
    expect(nameExpected, isNotNull);
  });
  test('should return null if the name contains last name', () {
    final nameExpected = nameValidation('Ana Whatever');
    expect(nameExpected, null);
  });

  test('should return null if the name contains middle name and last name', () {
    final nameExpected = nameValidation('Ana Whatever Whatever');
    expect(nameExpected, null);
  });

  test('should return null if the name contains middle name with 2 letters',
      () {
    final nameExpected = nameValidation('Maria Eduarda Dias da Silva');
    expect(nameExpected, null);
  });
}
