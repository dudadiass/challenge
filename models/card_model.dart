import 'user_model.dart';

class CardModel {
  final String numberCard;
  final String networkLogo;
  final String ccv;
  final String nameCard;
  final DateTime expiryDate;
  final UserModel user;

  CardModel(
      {required this.numberCard,
      required this.networkLogo,
      required this.ccv,
      required this.nameCard,
      required this.expiryDate,
      required this.user});

  void debit() {}
}

class DebitCardModel extends CardModel {
  DebitCardModel(
      {required super.numberCard,
      required super.networkLogo,
      required super.ccv,
      required super.nameCard,
      required super.expiryDate,
      required super.user});
}

class CreditCardModel extends CardModel {
  final double limit;
  final double amount_spent;

  CreditCardModel(
      {required this.limit,
      required this.amount_spent,
      required super.numberCard,
      required super.networkLogo,
      required super.ccv,
      required super.nameCard,
      required super.expiryDate,
      required super.user});

  void credit() {}
}
