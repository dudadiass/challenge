import 'package:bank/models/cards/debit_card_model.dart';

import '../user/user_model.dart';

abstract class AccountModel {
  final String branch; //agencia
  final String bank;
  final String accountNumber;
  final UserModel user;
  final DebitCardModel debitCard;

  double balance;
  AccountModel({
    required this.branch,
    required this.bank,
    required this.accountNumber,
    required double balance,
    required this.user,
    required this.debitCard,
  }) : balance = 0;

  double? withdraw(double value, double balance) {
    if (value >= balance) {
      balance = balance - value;
      return balance;
    } else {
      return null;
    }
  }

  double? deposit(double value, double balance) {
    if (value > 0) {
      balance = balance + value;
      return balance;
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return 'Agência: $branch, \nBanco: $bank, \nNúmero da conta: $accountNumber, \nUser: $user,  \nSaldo: $balance';
  }
}
