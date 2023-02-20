import 'dart:io';

import 'package:bank/inputs/card_inputs/debit_card_input.dart';
import 'package:bank/inputs/card_inputs/request_credit_card_input.dart';
import 'package:bank/inputs/messages_inputs/succes_messages.dart';

import '../../models/user/user_model.dart';
import 'current_accout_input.dart';
import 'deposit_account_input.dart';

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
    InputMessage.createAccount();
    debitCard(user);
    InputMessage.createDebitCard();
  } else {
    currentAccount(user);
    InputMessage.createAccount();
    debitCard(user);
    InputMessage.createDebitCard();
    requestCreditCard(user);
  }
}
