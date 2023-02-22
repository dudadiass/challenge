import 'dart:io';

import 'package:bank/inputs/account_menu_input/deposit_account_menu_input/deposit_account_menu_input.dart';
import 'package:bank/inputs/account_menu_input/request_password_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/models/user/user_model.dart';
import 'package:bank/validations/account_menu_validations/deposit_account_menu_validations/buy_debit_card_validation.dart';
import 'package:bank/validations/account_menu_validations/render_validation.dart';
import 'package:bank/validations/account_menu_validations/value_withdraw_validation.dart';

import '../../../validations/account_menu_validations/value_deposit_validation.dart';

inputDeposit(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (passwordValidation(user)) {
    if (valueDepositIsValid == null) {
      depositAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount, debitCard);
    } else {
      stderr.writeln(valueDepositIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount, debitCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount, debitCard);
  }
}

inputWithdraw(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print("\nDigite o valor que deseja sacar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueWithdrawIsValid = valueWithdraw(value, depositAccount.balance);

  if (passwordValidation(user)) {
    if (valueWithdrawIsValid == null) {
      depositAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount, debitCard);
    } else {
      stderr.writeln(valueWithdrawIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount, debitCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount, debitCard);
  }
}

void inputRender(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print('Digite os dias para o calculo do rendimento: ');
  int days = int.parse(stdin.readLineSync()!);
  final renderIsValid = calcRenderValidation(days, depositAccount.balance);
  if (passwordValidation(user)) {
    if (renderIsValid == null) {
      depositAccount.render(days);
      backToMenu(user, depositAccount, debitCard);
    } else {
      stderr.writeln(renderIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount, debitCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount, debitCard);
  }
}

inputBuyDebitCard(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print("\nDigite o valor que deseja pagar com o cartão:");
  double value = double.parse(stdin.readLineSync()!);
  final buyDebitCardIsValid = buyDebitCard(value, depositAccount.balance);

  if (passwordValidation(user)) {
    if (buyDebitCardIsValid == null) {
      debitCard.debit(value, depositAccount.balance);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${depositAccount.balance}\n');
      menuDepositAccount(user, depositAccount, debitCard);
    } else {
      stderr.writeln(buyDebitCardIsValid);
      Message.operationFailed();
      backToMenu(user, depositAccount, debitCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, depositAccount, debitCard);
  }
}

showUserInputs(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print(user.toString());
  backToMenu(user, depositAccount, debitCard);
}

showDepositAccount(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print(depositAccount.toString());
  backToMenu(user, depositAccount, debitCard);
}

showDebitCard(
  UserModel user,
  DepositAccountModel depositAccount,
  DebitCardModel debitCard,
) {
  print(debitCard.toString());
  backToMenu(user, depositAccount, debitCard);
}

void backToMenu(UserModel user, DepositAccountModel depositAccount,
    DebitCardModel debitCard) {
  menuDepositAccount(user, depositAccount, debitCard);
}
