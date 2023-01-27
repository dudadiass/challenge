class Account {
  double? branch;
  String? bank;
  double? accountNumber;
  double? balance;

  void transfer() {}

  void withdraw() {}

  void deposit() {}
}

class AccountDeposit extends Account {}

class AccountCurrent extends Account {
  void takeLoan() {}
}
