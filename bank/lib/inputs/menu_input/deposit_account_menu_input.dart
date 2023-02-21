import 'dart:io';

import 'package:bank/inputs/menu_input/menu_input.dart';
import 'package:bank/models/accounts/account_model.dart';
import 'package:bank/models/user/user_model.dart';

void menuDepositAccount(UserModel user, AccountModel account) {
  int op = 0;

  print("1) Depósito");
  print("2) Saque");
  print("3) Rendimento");
  print("4) Pagar com débito");
  print("5) Ver detalhes da conta");
  print("6) Ver detalhes do cartão");
  print("0) Sair");
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(user, account);
      break;
  }
}
