import 'package:bank/models/cards/credit_card_model.dart';

import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CreditCardModel creditCard;
  CurrentAccountModel({
    required this.creditCard,
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
    required super.debitCard,
  });

  double? takeLoan(double value) {
    creditCard.amountSpend += value;
    return creditCard.amountSpend;
  }
}
