import 'dart:io';

import 'package:bank/models/accounts/current_account_model.dart';
import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/models/user/user_model.dart';
import 'package:bank/validations/account_menu_validations/current_account_menu_validations/buy_master_card_validation.dart';
import 'package:bank/validations/account_menu_validations/current_account_menu_validations/take_loan_validation.dart';

import '../../../messages/input_message.dart';
import '../../../validations/account_menu_validations/current_account_menu_validations/buy_visa_card_validation.dart';
import '../../../validations/account_menu_validations/value_deposit_validation.dart';
import '../../../validations/account_menu_validations/value_withdraw_validation.dart';
import '../request_password_input.dart';
import 'current_account_menu_input.dart';

void inputDeposit(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print("\nDigite o valor que deseja depositar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueDepositIsValid = valueDepositValidation(value);

  if (passwordValidation(user)) {
    if (valueDepositIsValid == null) {
      currentAccount.deposit(value);
      Message.sucessDeposit();
      print('Saldo atual da conta: ' '${currentAccount.balance}\n');
      menuCurrentAccount(user, currentAccount, debitCard, creditCard);
    } else {
      stderr.writeln(valueDepositIsValid);
      Message.operationFailed();
      backToMenu(user, currentAccount, debitCard, creditCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, currentAccount, debitCard, creditCard);
  }
}

void inputWithdraw(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print("\nDigite o valor que deseja sacar:");
  double value = double.parse(stdin.readLineSync()!);
  final valueWithdrawIsValid = valueWithdraw(value, currentAccount.balance);

  if (passwordValidation(user)) {
    if (valueWithdrawIsValid == null) {
      currentAccount.withdraw(value);
      Message.sucessWithdraw();
      print('Saldo atual da conta: ' '${currentAccount.balance}\n');
      menuCurrentAccount(user, currentAccount, debitCard, creditCard);
    } else {
      stderr.writeln(valueWithdrawIsValid);
      Message.operationFailed();
      backToMenu(user, currentAccount, debitCard, creditCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, currentAccount, debitCard, creditCard);
  }
}

void inputTakeLoan(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print('Informe o valor que deseja para realizar o empréstimo: ');
  double value = double.parse(stdin.readLineSync()!);
  String? i = user.monthlyIncome;
  double monthlyIncome = double.parse(i!); //STRING to DOUBLE
  final takeLoanIsValid = takeLoanValidation(value, monthlyIncome);

  if (passwordValidation(user)) {
    if (takeLoanIsValid == null) {
      currentAccount.takeLoan(value);
      Message.sucessTakeLoan();
      backToMenu(user, currentAccount, debitCard, creditCard);
    } else {
      stderr.writeln(takeLoanIsValid);
      Message.operationFailed();
      backToMenu(user, currentAccount, debitCard, creditCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, currentAccount, debitCard, creditCard);
  }
}

void inputBuyVisaCard(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print("\nDigite o valor que deseja pagar com o cartão:");
  double value = double.parse(stdin.readLineSync()!);
  final buyVisaCardIsValid = buyVisaCard(value, currentAccount.balance);

  if (passwordValidation(user)) {
    if (buyVisaCardIsValid == null) {
      debitCard.debit(value, currentAccount.balance);
      Message.sucessDebitPayment();
      menuCurrentAccount(user, currentAccount, debitCard, creditCard);
    } else {
      stderr.writeln(buyVisaCardIsValid);
      Message.operationFailed();
      backToMenu(user, currentAccount, debitCard, creditCard);
    }
  } else {
    Message.invalidPassword();
    backToMenu(user, currentAccount, debitCard, creditCard);
  }
}

void inputBuyMasterCard(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
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
      if (passwordValidation(user)) {
        if (buyVisaCardIsValid == null) {
          debitCard.debit(value, currentAccount.balance);
          Message.sucessDebitPayment();
          menuCurrentAccount(user, currentAccount, debitCard, creditCard);
        } else {
          stderr.writeln(buyVisaCardIsValid);
          Message.operationFailed();
          backToMenu(user, currentAccount, debitCard, creditCard);
        }
      } else {
        Message.invalidPassword();
        backToMenu(user, currentAccount, debitCard, creditCard);
      }
      break;
    case 2:
      final buyMasterCardIsValid = buyMasterCard(value, creditCard.limit);
      if (passwordValidation(user)) {
        if (buyMasterCardIsValid == null) {
          creditCard.credit(value);
          Message.sucessCreditPayment();
          print('Limite atual: ' '${creditCard.limit}\n');
          menuCurrentAccount(user, currentAccount, debitCard, creditCard);
        } else {
          stderr.writeln(buyMasterCardIsValid);
          Message.operationFailed();
          backToMenu(user, currentAccount, debitCard, creditCard);
        }
      } else {
        Message.invalidPassword();
        backToMenu(user, currentAccount, debitCard, creditCard);
      }
      break;
  }
}

void showUserInputs(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print(user.toString());
  backToMenu(user, currentAccount, debitCard, creditCard);
}

void showcurrentAccount(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print(currentAccount.toString());
  backToMenu(user, currentAccount, debitCard, creditCard);
}

void showDebitCard(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print(debitCard.toString());
  backToMenu(user, currentAccount, debitCard, creditCard);
}

void showCreditCard(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  print(creditCard.toString());
  backToMenu(user, currentAccount, debitCard, creditCard);
}

void backToMenu(
  UserModel user,
  CurrentAccountModel currentAccount,
  DebitCardModel debitCard,
  CreditCardModel creditCard,
) {
  menuCurrentAccount(user, currentAccount, debitCard, creditCard);
}