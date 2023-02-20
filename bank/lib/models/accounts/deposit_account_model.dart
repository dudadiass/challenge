import 'account_model.dart';

class DepositAccountModel extends AccountModel {
  DepositAccountModel({
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
    required super.debitCard,
  });
}
