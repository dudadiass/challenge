import 'dart:io';

import 'package:bank/models/accounts/current_account_model.dart';
import 'current_account_menu_methods_input.dart';

void menuCurrentAccount(CurrentAccountModel currentAccount) {
  int op = 0;
  print('--------------------------------------------------------');
  print("|   1) Depósito                                        |");
  print("|   2) Saque                                           |");
  print("|   3) Emprestimo                                      |");
  print("|   4) Pagar com cartão (crédito ou débito)            |");
  print("|   5) Ver dados do cadastro                           |");
  print("|   6) Ver informações da conta                        |");
  print("|   7) Ver informações do cartão                       |");
  print("|   0) Sair                                            |");
  print('--------------------------------------------------------');
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(currentAccount);
      break;

    case 2:
      inputWithdraw(currentAccount);
      break;

    case 3:
      inputTakeLoan(currentAccount);
      break;

    case 4:
      inputBuyMasterCard(currentAccount);
      break;

    case 5:
      showUserInputs(currentAccount);
      break;

    case 6:
      showcurrentAccount(currentAccount);
      break;

    case 7:
      showCreditCard(currentAccount);
      break;
  }
}
