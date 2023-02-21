import 'dart:io';

import 'package:bank/inputs/menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/menu_input/password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/user/user_model.dart';

import '../../../validations/deposit_account_validations/menu_input_methods_validation.dart';

inputDeposit(
  UserModel user,
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueIsValid = valueBalanceValidation(value);
  if (valueIsValid == null) {
    if (passwordValidation(user)) {
      depositAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount);
    } else {
      Message.invalidPassword();
      backToMenu(user, depositAccount);
    }
  } else {
    stderr.writeln(valueIsValid);
    backToMenu(user, depositAccount);
  }
}

void backToMenu(UserModel user, DepositAccountModel depositAccount) {
  menuDepositAccount(user, depositAccount);
}
