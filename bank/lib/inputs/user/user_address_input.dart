// criar uma função que retorne um model a partir do input do usuário
import 'dart:io';

import '../../models/user/address_user_model.dart';

AddressUserModel userAddressModelCreation() {
  print("\nInforme os dados do seu endereço");
  print('Informe o CEP:');
  String zipCode = stdin.readLineSync()!;

  print('Informe sua rua:');
  String street = stdin.readLineSync()!;

  print('Informe o bairro:');
  String district = stdin.readLineSync()!;

  print('Informe a cidade:');
  String city = stdin.readLineSync()!;

  print('Informe o estado:');
  String state = stdin.readLineSync()!;

  print('Informe o numero:');
  String numberAddress = stdin.readLineSync()!;

  print('Informe o complemento (opcional):');
  String complementAddress = stdin.readLineSync()!;

  AddressUserModel userAddress = AddressUserModel(
    city: city,
    state: state,
    complementAddress: complementAddress,
    numberAddress: numberAddress,
    district: district,
    street: street,
    zipCode: zipCode,
  );

  return userAddress;
}
