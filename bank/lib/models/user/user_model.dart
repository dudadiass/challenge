import 'address_user_model.dart';

class UserModel {
  final String name; //atributos
  final String email;
  final String password;
  final String phone;
  final String cpf;
  final String? monthlyIncome;
  final AddressUserModel address;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.cpf,
    required this.address,
    required this.monthlyIncome,
  }); //construtor para instancia

  @override
  String toString() {
    return 'Nome: $name\n Email: $email\n Senha: $password\n Telefone: $phone\n CPF: $cpf\n Endereço: $address\n Renda Mensal: $monthlyIncome\n';
  }
}
