import 'card_model.dart';

class CreditCardModel extends CardModel {
  double limit;
  double amountSpend;
  CreditCardModel({
    required this.limit,
    required this.amountSpend,
    required super.numberCard,
    required super.networkLogo,
    required super.ccv,
    required super.nameCard,
    required super.expiryDate,
    required super.user,
  });

  double? credit(double value) {
    amountSpend = amountSpend + value;
    limit = limit - value;
    return limit;
  }

  @override
  String toString() {
    return 'Nome do titular: ${user.name} \nLimite: $limit \nQuantia gasta: $amountSpend \nNúmero do cartão: $numberCard \nLogo: $networkLogo \nCVV: $ccv \nNome do cartão: $nameCard \nData de expiração: $expiryDate';
  }
}
