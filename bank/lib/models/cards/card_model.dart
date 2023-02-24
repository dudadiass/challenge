import 'package:bank/models/user/user_model.dart';

abstract class CardModel {
  final String numberCard;
  final String networkLogo;
  final String ccv;
  final String nameCard;
  String expiryDate;
  final UserModel user;

  CardModel({
    required this.numberCard,
    required this.networkLogo,
    required this.ccv,
    required this.nameCard,
    required this.expiryDate,
    required this.user,
  });

  double debit(double value, double balance) {
    balance = balance - value;
    return balance;
  }
}
