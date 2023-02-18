import 'dart:io';

import '../../models/user/user_model.dart';
import 'current_accout_input.dart';
import 'deposit_account_input.dart';

int tip = 0;

void whichAccount({required UserModel user}) {
  int tip = 0;
  do {
    print('Escolha o tipo de conta:');
    print('1) Corrente');
    print('2) Poupança');
    tip = int.parse(stdin.readLineSync()!);
  } while (tip != 1 && tip != 2);
  if (tip == 1) {
    currentAccount(user: user);
  } else {
    depositAccount(user: user);
  }
}
