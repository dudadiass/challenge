class CardModel {
  final String numberCard;
  final String networkLogo;
  final String ccv;
  final String nameCard;
  final DateTime expiryDate;

  CardModel({
    required this.numberCard,
    required this.networkLogo,
    required this.ccv,
    required this.nameCard,
    required this.expiryDate,
  });

  void debit() {}
}

class DebitCardModel extends CardModel {
  DebitCardModel({
    required super.numberCard,
    required super.networkLogo,
    required super.ccv,
    required super.nameCard,
    required super.expiryDate,
  });

  @override
  void debit() {
    super.debit();
  }
}

class CreditCardModel extends CardModel {
  final double limit;
  final double amountSpend;

  CreditCardModel({
    required this.limit,
    required this.amountSpend,
    required super.numberCard,
    required super.networkLogo,
    required super.ccv,
    required super.nameCard,
    required super.expiryDate,
  });

  @override
  void debit() {}
  void credit() {}
}
