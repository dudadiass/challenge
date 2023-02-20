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
  double? debit(double value, double monthlyIncome) {
    if (value > 0 && value <= monthlyIncome) {
      monthlyIncome -= value;
      return monthlyIncome;
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return '\nNúmero do cartão: $numberCard, \nLogo: $networkLogo, \nCvv: $ccv, \nNome do cartão: $nameCard, \nData de expiração: $expiryDate, \nNome do usuário: $user.name';
  }
}
