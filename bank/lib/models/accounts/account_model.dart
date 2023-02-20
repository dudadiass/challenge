import 'package:bank/models/cards/card_model.dart';

import '../user/user_model.dart';

abstract class AccountModel {
  final String branch; //agencia
  final String bank;
  final String accountNumber;
  final UserModel user;
  final CardModel card;
  double balance;
  AccountModel(
      {required this.branch,
      required this.bank,
      required this.accountNumber,
      required double balance,
      required this.user,
      required this.card})
      : balance = 0;

  void transfer() {} //tranferencia

  void withdraw() {} //saque

  void deposit() {} //deposito

  @override
  String toString() {
    return 'Agência: $branch, \nBanco: $bank, \nNúmero da conta: $accountNumber, \nUser: $user,  \nSaldo: $balance';
  }
}
