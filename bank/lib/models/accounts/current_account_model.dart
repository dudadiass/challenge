import 'package:bank/models/cards/credit_card_model.dart';

import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CreditCardModel creditCard;
  CurrentAccountModel({
    required this.creditCard,
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.user,
  });

  double takeLoan(double value) {
    creditCard.amountSpend = creditCard.amountSpend + value;
    return creditCard.amountSpend;
  }

  @override
  String toString() {
    return 'Nome do titular: ${user.name} \nAgência: $branch \nBanco: $bank \nNúmero da conta: $accountNumber \nSaldo: $balance';
  }
}
