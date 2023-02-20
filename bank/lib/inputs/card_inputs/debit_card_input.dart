import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/repository/random.dart';

import '../../models/user/user_model.dart';

DebitCardModel debitCard(UserModel user) {
  String ccv;
  String expiryDate;
  String numberCard;
  String nameCard;
  String networkLogo;

  expiryDate = generateDate();
  ccv = generateRandomNumber(interactionsNumber: 3);
  numberCard = generateRandomNumber(interactionsNumber: 16);
  nameCard = 'Ouro Card';
  networkLogo = 'Visa';

  DebitCardModel debitCard = DebitCardModel(
    ccv: ccv,
    expiryDate: expiryDate,
    nameCard: nameCard,
    networkLogo: networkLogo,
    numberCard: numberCard,
    user: user,
  );

  return debitCard;
}
