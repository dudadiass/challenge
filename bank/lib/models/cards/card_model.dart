import 'package:bank/models/user/user_model.dart';

abstract class CardModel {
  final String numberCard;
  final String networkLogo;
  final String ccv;
  final String nameCard;
  final String expiryDate;
  final UserModel user;

  CardModel({
    required this.numberCard,
    required this.networkLogo,
    required this.ccv,
    required this.nameCard,
    required this.expiryDate,
    required this.user,
  });

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
    return '\nNúmero do cartão: $numberCard, \nLogo: $networkLogo, \nCVV: $ccv, \nNome do cartão: $nameCard, \nData de expiração: $expiryDate';
  }
}
