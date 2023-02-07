class AddressUserModel {
  final String street;
  final String district;
  final String city;
  final String state;
  final String numberAddress;
  final String zipCode;
  final String? complementAddress;

  AddressUserModel({
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    required this.numberAddress,
    required this.zipCode,
    required this.complementAddress,
  });
}
