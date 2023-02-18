import 'dart:io';

String create({
  required String print,
  required String? Function(String) validator,
}) {
  String? input;
  String? isValid;

  do {
    stdout.writeln(print);
    input = stdin.readLineSync();
    isValid = validator(input!);
    if (isValid != null) {
      stdout.writeln(isValid);
    }
  } while (isValid != null);

  return input;
}
