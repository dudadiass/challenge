import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/repository/random.dart';

import '../../models/user/user_model.dart';

double _setLimitByMontlyIncome(UserModel user) {
  double mon = user.monthlyIncome!;
  if (mon < 1000) {
    return mon * 0.1;
  } else if (mon >= 1000 && mon < 2500) {
    return mon * 0.25;
  } else if (mon >= 2500 && mon < 5000) {
    return mon * 0.4;
  } else if (mon >= 5000 && mon < 10000) {
    return mon * 0.6;
  } else {
    return mon * 0.75;
  }
}

CreditCardModel creditCard(UserModel user) {
  String ccv;
  String expiryDate;
  String numberCard;
  String nameCard;
  String networkLogo;

  expiryDate = generateDate();
  ccv = generateRandomNumber(interactionsNumber: 3);
  numberCard = generateRandomNumber(interactionsNumber: 16);
  nameCard = 'Ouro Card';
  networkLogo = 'Master Card';

  CreditCardModel creditCardModel = CreditCardModel(
    amountSpend: 0,
    ccv: ccv,
    expiryDate: expiryDate,
    limit: _setLimitByMontlyIncome(user),
    nameCard: nameCard,
    networkLogo: networkLogo,
    numberCard: numberCard,
    user: user,
  );

  return creditCardModel;
}
