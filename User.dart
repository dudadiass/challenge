class User {
  String? name;
  String? email;
  int? password;
  int? phone;
  int? cpf;
  late List<Address> address;

  User(
      this.name, this.email, this.password, this.phone, this.cpf, this.address);
}

class Address {
  String? street;
  String? district;
  String? city;
  String? state;
  int? n;
  int? zcode;
  String? complement;

  Address(this.street, this.district, this.city, this.state, this.n, this.zcode,
      this.complement);
}
