import 'dart:io';

import 'package:bank/models/user/user_model.dart';
import 'package:bank/messages/input_message.dart';

import '../../repositories/card_repository/credit_card_repository.dart';

void requestCreditCard(UserModel user) {
  int tipCard = 0;
  do {
    print('Deseja solicitar um cartão de crédito?');
    print('1) Sim');
    print('2) Não');
    tipCard = int.parse(stdin.readLineSync()!);
    if (tipCard == 1 && user.monthlyIncome != '') {
      Message.sucessCreateCreditCard();
      creditCardCreate(user);
    } else if (tipCard == 1 && user.monthlyIncome == '') {
      Message.failCreateCrediCard();
    } else if (tipCard != 2) {
      Message.invalidOption();
    }
  } while (tipCard != 2 && tipCard != 1);
}
