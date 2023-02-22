import 'card_model.dart';

class DebitCardModel extends CardModel {
  DebitCardModel({
    required super.numberCard,
    required super.networkLogo,
    required super.ccv,
    required super.nameCard,
    required super.expiryDate,
    required super.user,
  });

  @override
  String toString() {
    return 'Nome do titular: ${user.name} \nNúmero do cartão: $numberCard \nLogo: $networkLogo \nCVV: $ccv';
  }
}
