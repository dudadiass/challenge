import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/repositories/random.dart';

import '../../models/user/user_model.dart';

DebitCardModel debitCardCreate(UserModel user) {
  String ccv;
  String expiryDate;
  String numberCard;
  String nameCard;
  String networkLogo;

  expiryDate = generateDate();
  ccv = generateNumbers(3);
  numberCard = generateNumbers(16);
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
