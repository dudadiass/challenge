import '../user/user_model.dart';

abstract class AccountModel {
  final String branch;
  final String bank;
  final String accountNumber;
  final UserModel user;
  double _balance;
  double get balance => _balance;
  AccountModel({
    required this.branch,
    required this.bank,
    required this.accountNumber,
    required this.user,
  }) : _balance = 0;

  double withdraw(double value) {
    _balance = _balance - value;
    return _balance;
  }

  double deposit(double value) {
    _balance = _balance + value;
    return _balance;
  }
}
