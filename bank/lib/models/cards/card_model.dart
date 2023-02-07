abstract class CardModel {
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
