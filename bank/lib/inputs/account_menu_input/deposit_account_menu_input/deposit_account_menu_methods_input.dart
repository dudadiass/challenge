import 'dart:io';

import 'package:bank/inputs/account_menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/account_menu_input/request_password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/validations/account_menu_validations/deposit_account_menu_validations/buy_debit_card_validation.dart';
import 'package:bank/validations/account_menu_validations/render_validation.dart';
import 'package:bank/validations/account_menu_validations/value_withdraw_validation.dart';

import '../../../validations/account_menu_validations/value_deposit_validation.dart';

void inputDeposit(
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (passwordValidation(depositAccount.user)) {
    if (valueDepositIsValid == null) {
      depositAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      backToMenu(depositAccount);
    } else {
      stderr.writeln(valueDepositIsValid);
      Message.operationFailed();
      backToMenu(depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(depositAccount);
  }
}

void inputWithdraw(
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja sacar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueWithdrawIsValid = valueWithdraw(value, depositAccount.balance);

  if (passwordValidation(depositAccount.user)) {
    if (valueWithdrawIsValid == null) {
      depositAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      backToMenu(depositAccount);
    } else {
      stderr.writeln(valueWithdrawIsValid);
      Message.operationFailed();
      backToMenu(depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(depositAccount);
  }
}

void inputRender(
  DepositAccountModel depositAccount,
) {
  print('Digite os dias para o calculo do rendimento: ');
  int days = int.parse(stdin.readLineSync()!);
  final renderIsValid = calcRenderValidation(days, depositAccount.balance);
  if (passwordValidation(depositAccount.user)) {
    if (renderIsValid == null) {
      depositAccount.render(days);
      backToMenu(depositAccount);
    } else {
      stderr.writeln(renderIsValid);
      Message.operationFailed();
      backToMenu(depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(depositAccount);
  }
}

void inputBuyDebitCard(
  DepositAccountModel depositAccount,
) {
  print("\nDigite o valor que deseja pagar com o cartão:");
  double value = double.parse(stdin.readLineSync()!);
  final buyDebitCardIsValid = buyDebitCard(value, depositAccount.balance);

  if (passwordValidation(depositAccount.user)) {
    if (buyDebitCardIsValid == null) {
      depositAccount.debitCard.debit(value, depositAccount.balance);
      Message.sucessDebitPayment();
      backToMenu(depositAccount);
    } else {
      stderr.writeln(buyDebitCardIsValid);
      Message.operationFailed();
      backToMenu(depositAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(depositAccount);
  }
}

void showUserInputs(
  DepositAccountModel depositAccount,
) {
  print(depositAccount.user.toString());
  backToMenu(depositAccount);
}

void showDepositAccount(
  DepositAccountModel depositAccount,
) {
  print(depositAccount.toString());
  backToMenu(depositAccount);
}

void showDebitCard(
  DepositAccountModel depositAccount,
) {
  print(depositAccount.debitCard.toString());
  backToMenu(depositAccount);
}

void backToMenu(
  DepositAccountModel depositAccount,
) {
  menuDepositAccount(depositAccount);
}
