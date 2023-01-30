class Card {
  int number_card;
  String network_logo;
  int ccv;
  String name_card;
  DateTime expiry_date;

  Card(this.number_card, this.network_logo, this.ccv, this.name_card,
      this.expiry_date);

  void debit() {}
}

class DebitCard extends Card {
  DebitCard(super.n_card, super.network_logo, super.ccv, super.name_card,
      super.expiry_date);
}

class CreditCard extends Card {
  double limit;
  double amount_spent;

  CreditCard(super.n_card, super.network_logo, super.ccv, super.name_card,
      super.expiry_date, this.limit, this.amount_spent);

  void credit() {}
}
