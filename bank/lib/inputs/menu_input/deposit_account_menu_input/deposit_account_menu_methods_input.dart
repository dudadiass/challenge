import 'dart:io';

import 'package:bank/inputs/menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/menu_input/request_password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/user/user_model.dart';
import 'package:bank/validations/deposit_account_menu_validations/value_withdraw_validation.dart';

import '../../../validations/deposit_account_menu_validations/value_deposit_validation.dart';

inputDeposit(
  UserModel user,
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (valueDepositIsValid == null) {
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
    stderr.writeln(valueDepositIsValid);
    backToMenu(user, depositAccount);
  }
}

inputWithdraw(
  UserModel user,
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja sacar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueWithdrawIsValid = valueWithdraw(value, depositAccount.balance);

  if (valueWithdrawIsValid == null) {
    if (passwordValidation(user)) {
      depositAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount);
    } else {
      Message.invalidPassword();
      backToMenu(user, depositAccount);
    }
  } else {
    stderr.writeln(valueWithdrawIsValid);
    backToMenu(user, depositAccount);
  }
}

void backToMenu(UserModel user, DepositAccountModel depositAccount) {
  menuDepositAccount(user, depositAccount);
}
