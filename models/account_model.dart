import 'user_model.dart';

class AccountModel {
  final String branch;
  final String bank;
  final String accountNumber;
  double balance;
  final UserModel user;

  AccountModel(
      {required this.branch,
      required this.bank,
      required this.accountNumber,
      required this.balance,
      required this.user});

  void transfer() {}

  void withdraw() {}

  void deposit() {}
}

class AccountDeposit extends AccountModel {
  AccountDeposit(
      {required super.branch,
      required super.bank,
      required super.accountNumber,
      required super.balance,
      required super.user});
}

class AccountCurrent extends AccountModel {
  AccountCurrent(
      {required super.branch,
      required super.bank,
      required super.accountNumber,
      required super.balance,
      required super.user});

  void takeLoan() {}
}
