class UserModel {
  final String name; //atributos
  final String email;
  final String password;
  final String phone;
  final String cpf;
  final double? monthlyIncome;
  final AddressModel address;

  UserModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.cpf,
      required this.address,
      required this.monthlyIncome}); //construtor para instancia
}

class AddressModel {
  final String street;
  final String district;
  final String city;
  final String state;
  final String nAddress;
  final String zipCode;
  final String complement;

  AddressModel(
      {required this.street,
      required this.district,
      required this.city,
      required this.state,
      required this.nAddress,
      required this.zipCode,
      required this.complement});
}
