import 'card_model.dart';

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
