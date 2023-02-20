import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CurrentAccountModel({
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
    required super.card,
  });

  void takeLoan() {} //emprestimo
}
