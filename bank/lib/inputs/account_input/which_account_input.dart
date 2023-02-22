import 'dart:io';

import 'package:bank/models/accounts/current_account_model.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/repositories/card_repository/debit_card_repository.dart';
import 'package:bank/inputs/credit_card_input/request_credit_card_input.dart';
import 'package:bank/messages/input_message.dart';

import '../../models/user/user_model.dart';
import '../../repositories/account_repository/current_accout_repository.dart';
import '../../repositories/account_repository/deposit_account_repository.dart';
import '../account_menu_input/current_account_menu_input/current_account_menu_input.dart';
import '../account_menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';

whichAccount(
    UserModel user,
    DepositAccountModel depositAccount,
    CurrentAccountModel currentAccount,
    DebitCardModel debitCardModel,
    CreditCardModel creditCardModel) {
  int tip = 0;

  do {
    print('Escolha o tipo de conta:');
    print('1) Poupança');
    print('2) Corrente');
    tip = int.parse(stdin.readLineSync()!);
  } while (tip != 1 && tip != 2);
  if (tip == 1) {
    depositAccountCreate(user);
    Message.createAccount();
    debitCardCreate(user);
    Message.createDebitCard();
    menuDepositAccount(user, depositAccount, debitCardModel);
  } else {
    currentAccountCreate(user);
    Message.createAccount();
    debitCardCreate(user);
    Message.createDebitCard();
    requestCreditCard(user);
    menuCurrentAccount(user, currentAccount, debitCardModel, creditCardModel);
  }
}
