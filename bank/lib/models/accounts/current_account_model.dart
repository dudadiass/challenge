import 'package:bank/models/cards/credit_card_model.dart';

import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CreditCardModel creditCardModel;
  CurrentAccountModel({
    required this.creditCardModel,
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
  });

  double? takeLoan(double value, double monthlyIncome) {
    String? i = user.monthlyIncome;
    if (i != '') {
      double monthlyIncome = double.parse(i!); //STRING to DOUBLE
      double seventyPerCent = monthlyIncome * 0.7;
      double twentyPerCent = monthlyIncome * 0.2;

      if (value >= twentyPerCent && value <= seventyPerCent) {
        balance += value;
        creditCardModel.amountSpend += value;
        return null;
      } else {
        return null;
      }
    }

    return 0;
  }

  @override
  double? withdraw(double value, double balance) {
    if (value >= balance) {
      balance = balance - value;
      return balance;
    } else {
      return null;
    }
  } //emprestimo
}
