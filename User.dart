class User {
  String name;
  String email;
  int password;
  int phone;
  int cpf;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.cpf,
  });
}

User user = User(
  name: "Maria Eduarda",
  email: "dias@gmail.com",
  password: 0,
  phone: 4188906754,
  cpf: 14178634589,
);
