import 'dart:io';

import 'package:bank/models/user/user_model.dart';
import 'package:bank/inputs/messages_inputs/succes_messages.dart';

import 'credit_card_input.dart';

void requestCreditCard(UserModel user) {
  int tipCard = 0;
  print('Deseja solicitar um cartão de crédito?');
  print('1) Sim');
  print('2) Não');
  tipCard = int.parse(stdin.readLineSync()!);
  if (tipCard == 1 && user.monthlyIncome != 0) {
    InputMessage.sucessCreateCreditCard();
    creditCard(user);
    print(creditCard(user).limit);
  } else {
    InputMessage.failCreateCrediCard();
  }
}
