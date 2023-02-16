String? cpfValidation(String cpf) {
  final cpfRegex =
      RegExp(r'^(([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2}))$');

  if (cpfRegex.hasMatch(cpf) && cpfIsValid(cpf)) {
    return null;
  } else {
    return "the cpf you filled in is invalid";
  }
}

List<int> cpfSplitted(String cpf) {
  String formattedCpf = cpf.replaceAll('.', '').replaceAll('-', '');
  return formattedCpf.split('').map((e) => int.parse(e)).toList();
}

bool cpfIsValid(String cpf) {
  final cpfDigits = cpfSplitted(cpf);
  final cpfTenth = cpfDigits[9];
  final cpfEleventh = cpfDigits[10];
  final verifyTenthDigit = cpfVerify(cpf, 9);
  final verifyEleventhDigit = cpfVerify(cpf, 10);

  if (cpfTenth == verifyTenthDigit && cpfEleventh == verifyEleventhDigit) {
    return true;
  } else {
    return false;
  }
}

int cpfVerify(String cpf, int index) {
  int sumMult = 0;
  for (var i = 0; i <= (index - 1); i++) {
    final commonDigits = cpfSplitted(cpf).elementAt(i);
    final valueMult = (index + 1);
    final totalMult = commonDigits * (valueMult - i);
    sumMult += totalMult;
  }
  final result = (sumMult * 10) % 11;
  if (result == 10) {
    return 0;
  } else {
    return result;
  }
}
