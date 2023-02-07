import '../cards/credit_card_model.dart';
import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  final CreditCardModel creditCardModel;
  CurrentAccountModel(
    this.creditCardModel, {
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
  });

  void takeLoan() {} //emprestimo
}
