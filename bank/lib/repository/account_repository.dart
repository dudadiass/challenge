import 'dart:math';

void accountRepository(dynamic accountNumber, dynamic branch, dynamic bank) {
  var rnd = Random();
  accountNumber = "${rnd.nextInt(100000)}";
  branch = "${rnd.nextInt(100000)}";

  bank = "123";
}
