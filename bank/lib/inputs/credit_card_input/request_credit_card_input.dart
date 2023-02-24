import 'dart:io';

import 'package:bank/models/user/user_model.dart';
import 'package:bank/messages/input_message.dart';

import '../../repositories/card_repository/credit_card_repository.dart';

void requestCreditCard(UserModel user) {
  int request = 0;
  do {
    print('Tecle 1 para solicitar um cartão de crédito');
    request = int.parse(stdin.readLineSync()!);
    if (request == 1) {
      Message.sucessCreateCreditCard();
      creditCardCreate(user);
    } else {
      Message.invalidOption();
    }
  } while (request != 1);
}
