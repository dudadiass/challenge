class Account {
  double branch;
  String bank;
  double accountNumber;
  double balance;

  Account(this.branch, this.bank, this.accountNumber, this.balance);

  void transfer() {}

  void withdraw() {}

  void deposit() {}
}

class AccountDeposit extends Account {
  AccountDeposit(super.branch, super.bank, super.accountNumber, super.balance);
}

class AccountCurrent extends Account {
  AccountCurrent(super.branch, super.bank, super.accountNumber, super.balance);

  void takeLoan() {}
}
