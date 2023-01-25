class Address {
  String street;
  String district;
  String city;
  String state;
  int n;
  int zcode;
  String? complement;

  Address(
      {required this.street,
      required this.district,
      required this.city,
      required this.state,
      required this.n,
      required this.zcode,
      required this.complement});
}

Address address = Address(
    street: "São Luiz",
    district: "Tabuleiro",
    city: "Paranaguá",
    state: "RJ",
    n: 23,
    zcode: 45678000,
    complement: "Próximo a barbearia");
