import 'dart:io';

import 'package:bank/inputs/menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/menu_input/request_password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/user/user_model.dart';
import 'package:bank/validations/deposit_account_menu_validations/render_validation.dart';
import 'package:bank/validations/deposit_account_menu_validations/value_withdraw_validation.dart';

import '../../../validations/deposit_account_menu_validations/value_deposit_validation.dart';

inputDeposit(
  UserModel user,
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (passwordValidation(user)) {
    if (valueDepositIsValid == null) {
      depositAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount);
    } else {
      stderr.writeln(valueDepositIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount);
    }
  } else {
    Message.invalidPassword();
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

  if (passwordValidation(user)) {
    if (valueWithdrawIsValid == null) {
      depositAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount);
    } else {
      stderr.writeln(valueWithdrawIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount);
  }
}

void inputRender(UserModel user, DepositAccountModel depositAccount) {
  print('Digite os dias para o calculo do rendimento: ');
  int days = int.parse(stdin.readLineSync()!);
  final renderIsValid = calcRenderValidation(days, depositAccount.balance);
  if (passwordValidation(user)) {
    if (renderIsValid == null) {
      depositAccount.render(days);
      backToMenu(user, depositAccount);
    } else {
      stderr.writeln(renderIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount);
  }
}

void backToMenu(UserModel user, DepositAccountModel depositAccount) {
  menuDepositAccount(user, depositAccount);
}
