import 'dart:io';

import 'package:bank/inputs/menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/account_model.dart';
import 'package:bank/models/user/user_model.dart';

void inputDeposit(UserModel user, AccountModel account) {
  print("Digite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  if (value > 5000) {
    Message.depositValueBigger();
    backToMenu(user, account);
  } else {
    if (passwordValidation(user)) {
      account.deposit(value);
      Message.sucessDeposit();
      menuDepositAccount(user, account);
    } else {
      Message.invalidPassword();
      backToMenu(user, account);
    }
  }
}

void backToMenu(UserModel user, AccountModel account) {
  menuDepositAccount(user, account);
}
