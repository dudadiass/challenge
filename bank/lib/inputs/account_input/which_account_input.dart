import 'dart:io';

import 'package:bank/repositories/card_repository/debit_card_repository.dart';
import 'package:bank/inputs/card_input/request_credit_card_input.dart';
import 'package:bank/messages/input_message.dart';

import '../../models/user/user_model.dart';
import '../../repositories/account_repository/current_accout_repository.dart';
import '../../repositories/account_repository/deposit_account_repository.dart';

void whichAccount(UserModel user) {
  int tip = 0;

  do {
    print('Escolha o tipo de conta:');
    print('1) Poupança');
    print('2) Corrente');
    tip = int.parse(stdin.readLineSync()!);
  } while (tip != 1 && tip != 2);
  if (tip == 1) {
    depositAccount(user);
    Message.createAccount();
    debitCard(user);
    Message.createDebitCard();
  } else {
    currentAccount(user);
    Message.createAccount();
    debitCard(user);
    Message.createDebitCard();
    requestCreditCard(user);
  }
}
