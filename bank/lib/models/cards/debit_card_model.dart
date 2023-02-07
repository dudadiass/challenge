import 'card_model.dart';

class DebitCardModel extends CardModel {
  DebitCardModel({
    required super.numberCard,
    required super.networkLogo,
    required super.ccv,
    required super.nameCard,
    required super.expiryDate,
  });

  @override
  void debit() {}
}
