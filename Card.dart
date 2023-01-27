class Card {
  int? n;
  String? networkLogo;
  int? ccv;
  String? nameCard;
  DateTime? expiryDate;

  void debit() {}
}

class DebitCard extends Card {}

class CreditCard extends Card {
  double? limit;
  double? amountSpent;

  void credit() {}
}
