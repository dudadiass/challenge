class User {
  //classes
  String name; //atributos
  String email;
  int password;
  int phone;
  int cpf;
  double? monthly_income;
  List<Address> address;

  User(this.name, this.email, this.password, this.phone, this.cpf, this.address,
      this.monthly_income); //construtor para instancia
}

class Address {
  String street;
  String district;
  String city;
  String state;
  int n;
  int zip_code;
  String complement;

  Address(this.street, this.district, this.city, this.state, this.n,
      this.zip_code, this.complement);
}
