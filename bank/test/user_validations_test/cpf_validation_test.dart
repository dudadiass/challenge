import 'package:bank/validations/user_validations/cpf_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return String if the cpf has not dot neither dash ', () {
    final cpfExpected = cpfValidation('14193988902');
    expect(cpfExpected, isNotNull);
  });
  test('should return String if the cpf has not eleven digits', () {
    final cpfExpected = cpfValidation('141.939.889-0');
    expect(cpfExpected, isNotNull);
  });
  test('should return String if the cpf tenth and eleventh digits are invalid',
      () {
    final cpfExpected = cpfValidation('595.956.930-34');
    expect(cpfExpected, isNotNull);
  });
  test('shold return String if the cpf tenth digit is invalid', () {
    final cpfExpected = cpfValidation('048.914.330-10');
    expect(cpfExpected, isNotNull);
  });
  test('shold return String if the cpf eleventh digit is invalid', () {
    final cpfExpected = cpfValidation('04891433005');
    expect(cpfExpected, isNotNull);
  });
  test('should return null if the two verify digits are valid', () {
    final cpfExpected = cpfValidation('141.939.889-02');
    expect(cpfExpected, null);
  });
}
