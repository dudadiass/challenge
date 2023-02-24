import 'dart:io';

import 'package:bank/models/accounts/current_account_model.dart';
import 'package:bank/validations/account_menu_validations/current_account_menu_validations/buy_master_card_validation.dart';
import 'package:bank/validations/account_menu_validations/current_account_menu_validations/take_loan_validation.dart';

import '../../../messages/input_message.dart';
import '../../../validations/account_menu_validations/current_account_menu_validations/buy_visa_card_validation.dart';
import '../../../validations/account_menu_validations/value_deposit_validation.dart';
import '../../../validations/account_menu_validations/value_withdraw_validation.dart';
import '../request_password_input.dart';
import 'current_account_menu_input.dart';

void inputDeposit(
  CurrentAccountModel currentAccount,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (passwordValidation(currentAccount.user)) {
    if (valueDepositIsValid == null) {
      currentAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${currentAccount.balance}\n');
      backToMenu(currentAccount);
    } else {
      stderr.writeln(valueDepositIsValid);
      Message.operationFailed();
      backToMenu(currentAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(currentAccount);
  }
}

void inputWithdraw(
  CurrentAccountModel currentAccount,
) {
  print("\nDigite o valor que deseja sacar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueWithdrawIsValid = valueWithdraw(value, currentAccount.balance);

  if (passwordValidation(currentAccount.user)) {
    if (valueWithdrawIsValid == null) {
      currentAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${currentAccount.balance}\n');
      backToMenu(currentAccount);
    } else {
      stderr.writeln(valueWithdrawIsValid);
      Message.operationFailed();
      backToMenu(currentAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(currentAccount);
  }
}

void inputTakeLoan(
  CurrentAccountModel currentAccount,
) {
  print('Informe o valor que deseja para realizar o empréstimo: ');
  double value = double.parse(stdin.readLineSync()!);
  String? i = currentAccount.user.monthlyIncome;
  double monthlyIncome = double.parse(i!); //STRING to DOUBLE
  final takeLoanIsValid = takeLoanValidation(value, monthlyIncome);

  if (passwordValidation(currentAccount.user)) {
    if (takeLoanIsValid == null) {
      currentAccount.takeLoan(value);
      Message.sucessTakeLoan();
      backToMenu(currentAccount);
    } else {
      stderr.writeln(takeLoanIsValid);
      Message.operationFailed();
      backToMenu(currentAccount);
    }
  } else {
    Message.invalidPassword();
    backToMenu(currentAccount);
  }
}

void inputBuyMasterCard(
  CurrentAccountModel currentAccount,
) {
  int opCard = 0;
  print('Informe o valor que deseja pagar:');
  double value = double.parse(stdin.readLineSync()!);
  print("\nDeseja pagar com:");
  print('1) Débito');
  print('2) Crédito');
  opCard = int.parse(stdin.readLineSync()!);
  switch (opCard) {
    case 1:
      final buyVisaCardIsValid = buyVisaCard(value, currentAccount.balance);
      if (passwordValidation(currentAccount.user)) {
        if (buyVisaCardIsValid == null) {
          currentAccount.creditCard.debit(value, currentAccount.balance);
          Message.sucessDebitPayment();
          backToMenu(currentAccount);
        } else {
          stderr.writeln(buyVisaCardIsValid);
          Message.operationFailed();
          backToMenu(currentAccount);
        }
      } else {
        Message.invalidPassword();
        backToMenu(currentAccount);
      }
      break;
    case 2:
      final buyMasterCardIsValid =
          buyMasterCard(value, currentAccount.creditCard.limit);
      if (passwordValidation(currentAccount.user)) {
        if (buyMasterCardIsValid == null) {
          currentAccount.creditCard.credit(value);
          Message.sucessCreditPayment();
          print('Limite atual: ' '${currentAccount.creditCard.limit}\n');
          backToMenu(currentAccount);
        } else {
          stderr.writeln(buyMasterCardIsValid);
          Message.operationFailed();
          backToMenu(currentAccount);
        }
      } else {
        Message.invalidPassword();
        backToMenu(currentAccount);
      }
      break;
  }
}

void showUserInputs(
  CurrentAccountModel currentAccount,
) {
  print(currentAccount.user.toString());
  backToMenu(currentAccount);
}

void showcurrentAccount(
  CurrentAccountModel currentAccount,
) {
  print(currentAccount.toString());
  backToMenu(currentAccount);
}

void showCreditCard(
  CurrentAccountModel currentAccount,
) {
  print(currentAccount.creditCard.toString());
  backToMenu(currentAccount);
}

void backToMenu(
  CurrentAccountModel currentAccount,
) {
  menuCurrentAccount(currentAccount);
}
