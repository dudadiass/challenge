class UserModel {
  final String name; //atributos
  final String email;
  final String password;
  final String phone;
  final String cpf;
  final String? monthlyIncome;
  final AddressModel address;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.cpf,
    required this.address,
    required this.monthlyIncome,
  }); //construtor para instancia
}

class AddressModel {
  final String street;
  final String district;
  final String city;
  final String state;
  final String numberAddress;
  final String zipCode;
  final String? complementAddress;

  AddressModel({
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    required this.numberAddress,
    required this.zipCode,
    required this.complementAddress,
  });
}
