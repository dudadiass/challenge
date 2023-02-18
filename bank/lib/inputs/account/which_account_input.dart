import 'dart:io';

import 'package:bank/inputs/account/current_accout_input.dart';
import 'package:bank/inputs/account/deposit_account_input.dart';

void wichAccount() {
  int tip = 0;
  do {
    print('Escolha o tipo de conta:');
    print('1) Corrente');
    print('2) Poupança');
    tip = int.parse(stdin.readLineSync()!);
  } while (tip != 1 && tip != 2);
  if (tip == 1) {
    currentAccount();
  } else {
    depositAccount();
  }
}
