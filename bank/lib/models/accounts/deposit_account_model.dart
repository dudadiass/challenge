import '../cards/debit_card_model.dart';
import 'account_model.dart';

class DepositAccountModel extends AccountModel {
  final DebitCardModel debitCardModel;
  DepositAccountModel(
    this.debitCardModel, {
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
  });
}
