import 'dart:io';

import '../../models/user/address_user_model.dart';

AddressUserModel userAddressModelCreation() {
  print("\nDados residenciais");
  print('\nInforme o CEP:');
  String zipCode = stdin.readLineSync()!;

  print('\nInforme sua rua:');
  String street = stdin.readLineSync()!;

  print('\nInforme o bairro:');
  String district = stdin.readLineSync()!;

  print('\nInforme a cidade:');
  String city = stdin.readLineSync()!;

  print('\nInforme o estado:');
  String state = stdin.readLineSync()!;

  print('\nInforme o numero:');
  String numberAddress = stdin.readLineSync()!;

  print('\nInforme o complemento (opcional):');
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
