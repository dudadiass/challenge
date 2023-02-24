import 'dart:io';

import 'package:bank/inputs/account_menu_input/deposit_account_menu_input/deposit_account_menu_methods_input.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';

void menuDepositAccount(DepositAccountModel depositAccount) {
  int op = 0;
  print('------------------------------------');
  print("|   1) Depósito                    |");
  print("|   2) Saque                       |");
  print("|   3) Consultar Rendimento        |");
  print("|   4) Pagar com cartão (débito)   |");
  print("|   5) Ver dados do cadastro       |");
  print("|   6) Ver informações da conta    |");
  print("|   7) Ver informações do cartão   |");
  print("|   0) Sair                        |");
  print('------------------------------------');
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(depositAccount);
      break;

    case 2:
      inputWithdraw(depositAccount);
      break;

    case 3:
      inputRender(depositAccount);
      break;

    case 4:
      inputBuyDebitCard(depositAccount);
      break;

    case 5:
      showUserInputs(depositAccount);
      break;

    case 6:
      showDepositAccount(depositAccount);
      break;

    case 7:
      showDebitCard(depositAccount);
      break;
  }
}
