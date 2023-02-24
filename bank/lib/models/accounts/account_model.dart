import '../user/user_model.dart';

abstract class AccountModel {
  final String branch;
  final String bank;
  final String accountNumber;
  final UserModel user;

  double balance;
  AccountModel({
    required this.branch,
    required this.bank,
    required this.accountNumber,
    required this.user,
  }) : balance = 0;

  double withdraw(double value) {
    balance = balance - value;
    return balance;
  }

  double deposit(double value) {
    balance = balance + value;
    return balance;
  }
}
