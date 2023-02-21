import 'dart:io';

import 'package:bank/inputs/menu_input/deposit_account_menu_input/deposit_account_menu_methods_input.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/user/user_model.dart';

void menuDepositAccount(UserModel user, DepositAccountModel depositAccount) {
  int op = 0;
  print('------------------------------------');
  print("|   1) Depósito                    |");
  print("|   2) Saque                       |");
  print("|   3) Consultar Rendimento        |");
  print("|   4) Pagar com cartão de débito  |");
  print("|   5) Ver detalhes da conta       |");
  print("|   6) Ver detalhes do cartão      |");
  print("|   0) Sair                        |");
  print('------------------------------------');
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(user, depositAccount);
      break;

    case 2:
      inputWithdraw(user, depositAccount);
      break;

    case 3:
      inputRender(user, depositAccount);
      break;
  }
}
