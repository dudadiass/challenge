import 'dart:io';

import 'package:bank/inputs/account_menu_input/deposit_account_menu_input/deposit_account_menu_methods_input.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/models/user/user_model.dart';

void menuDepositAccount(UserModel user, DepositAccountModel depositAccount,
    DebitCardModel debitCard) {
  int op = 0;
  print('------------------------------------');
  print("|   1) Depósito                    |");
  print("|   2) Saque                       |");
  print("|   3) Consultar Rendimento        |");
  print("|   4) Pagar com cartão de débito  |");
  print("|   5) Ver dados do cadastro       |");
  print("|   6) Ver informações da conta    |");
  print("|   7) Ver informações do cartão   |");
  print("|   0) Sair                        |");
  print('------------------------------------');
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(user, depositAccount, debitCard);
      break;

    case 2:
      inputWithdraw(user, depositAccount, debitCard);
      break;

    case 3:
      inputRender(user, depositAccount, debitCard);
      break;

    case 4:
      inputBuyDebitCard(user, depositAccount, debitCard);
      break;

    case 5:
      showUserInputs(user, depositAccount, debitCard);
      break;

    case 6:
      showDepositAccount(user, depositAccount, debitCard);
      break;

    case 7:
      showDebitCard(user, depositAccount, debitCard);
      break;
  }
}
