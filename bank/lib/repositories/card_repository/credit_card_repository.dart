import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/repositories/generate.dart';

import '../../models/user/user_model.dart';

double _limit(UserModel user) {
  String? i = user.monthlyIncome;
  if (i != '') {
    double monthlyIncome = double.parse(i!); //STRING to DOUBLE

    if (monthlyIncome < 1000) {
      return monthlyIncome * 0.1;
    } else if (monthlyIncome >= 1000 && monthlyIncome < 2500) {
      return monthlyIncome * 0.25;
    } else if (monthlyIncome >= 2500 && monthlyIncome < 5000) {
      return monthlyIncome * 0.4;
    } else if (monthlyIncome >= 5000 && monthlyIncome < 10000) {
      return monthlyIncome * 0.6;
    } else if (monthlyIncome == 0) {
      return 0;
    } else {
      return monthlyIncome * 0.75;
    }
  }

  return 0;
}

CreditCardModel creditCardCreate(UserModel user) {
  String ccv;
  String expiryDate;
  String numberCard;
  String nameCard;
  String networkLogo;

  expiryDate = generateDate();
  ccv = generateRandomNumbers(3);
  numberCard = generateRandomNumbers(16);
  nameCard = 'Ouro Card';
  networkLogo = 'Master Card';

  CreditCardModel creditCardModel = CreditCardModel(
    amountSpend: 0,
    ccv: ccv,
    expiryDate: expiryDate,
    limit: _limit(user),
    nameCard: nameCard,
    networkLogo: networkLogo,
    numberCard: numberCard,
    user: user,
  );

  return creditCardModel;
}
