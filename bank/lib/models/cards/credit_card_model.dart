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

  @override
  void debit() {}

  void credit() {}

  @override
  String toString() {
    return 'Limite: $limit, \nQuantia gasta: $amountSpend, \nNúmero do cartão: $numberCard, \nLogo: $networkLogo, \nCvv: $ccv, \nNome do cartão: $nameCard, \nData de expiração: $expiryDate, \nNome do usuário: $user.name';
  }
}
