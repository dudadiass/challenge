import '../user/user_model.dart';

abstract class AccountModel {
  final String branch; //agencia
  final String bank;
  final String accountNumber;
  final UserModel user;
  double _balance;
  double get balance => _balance;

  AccountModel({
    required this.branch,
    required this.bank,
    required this.accountNumber,
    required double balance,
    required this.user,
  }) : _balance = balance;

  void transfer() {} //tranferencia

  void withdraw() {} //saque

  void deposit() {} //deposito
}
