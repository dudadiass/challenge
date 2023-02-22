import 'dart:io';

import 'package:bank/models/accounts/current_account_model.dart';
import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';

import '../../../models/user/user_model.dart';
import 'current_account_menu_methods_input.dart';

void menuCurrentAccount(UserModel user, CurrentAccountModel currentAccount,
    DebitCardModel debitCard, CreditCardModel creditCard) {
  int op = 0;
  print('--------------------------------------------------------');
  print("|   1) Depósito                                        |");
  print("|   2) Saque                                           |");
  print("|   3) Emprestimo                                      |");
  print("|   4) Pagar com cartão Visa (débito)                  |");
  print("|   5) Pagar com cartão Master (débito ou crédito)     |");
  print("|   6) Ver dados do cadastro                           |");
  print("|   7) Ver informações da conta                        |");
  print("|   8) Ver informações do cartão de Visa (débito)      |");
  print("|   9) Ver informações do cartão Master  (crédito)     |");
  print("|   0) Sair                                            |");
  print('--------------------------------------------------------');
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      inputDeposit(user, currentAccount, debitCard, creditCard);
      break;

    case 2:
      inputWithdraw(user, currentAccount, debitCard, creditCard);
      break;

    case 3:
      inputTakeLoan(user, currentAccount, debitCard, creditCard);
      break;

    case 4:
      inputBuyVisaCard(user, currentAccount, debitCard, creditCard);
      break;

    case 5:
      inputBuyMasterCard(user, currentAccount, debitCard, creditCard);
      break;

    case 6:
      showUserInputs(user, currentAccount, debitCard, creditCard);
      break;

    case 7:
      showcurrentAccount(user, currentAccount, debitCard, creditCard);
      break;

    case 8:
      showDebitCard(user, currentAccount, debitCard, creditCard);
      break;

    case 9:
      showCreditCard(user, currentAccount, debitCard, creditCard);
      break;
  }
}
