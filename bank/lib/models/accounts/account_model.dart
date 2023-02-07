import '../user/user_model.dart';

class AccountModel {
  final String branch; //agencia
  final String bank;
  final String accountNumber;
  double _balance;
  final UserModel user;
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
