import 'dart:io';

import 'package:bank/models/user/address_user_model.dart';
import 'package:bank/inputs/messages_inputs/succes_messages.dart';
import 'package:bank/validations/user_validations/cpf_validation.dart';
import 'package:bank/validations/user_validations/email_validation.dart';
import 'package:bank/validations/user_validations/monthly_income_validation.dart';
import 'package:bank/validations/user_validations/name_validation.dart';
import 'package:bank/validations/user_validations/password_validation.dart';
import 'package:bank/validations/user_validations/phone_validation.dart';

import '../../models/user/user_model.dart';
import 'user_address_input.dart';

UserModel userCreate() {
  String? nameIsValid;
  String name;

  print('\nCadastre um usuário');

  do {
    print('\nInforme seu nome:');
    name = stdin.readLineSync()!;
    nameIsValid = nameValidation(name);
    if (nameIsValid != null) {
      stderr.writeln(nameIsValid);
    }
  } while (nameIsValid != null);

  String? emailIsValid;
  String email;

  do {
    print('\nInforme seu e-mail:');
    email = stdin.readLineSync()!;
    emailIsValid = emailValidation(email);
    if (emailIsValid != null) {
      stderr.writeln(emailIsValid);
    }
  } while (emailIsValid != null);

  String? phoneIsValid;
  String phone;

  do {
    print('\nInforme seu telefone:');
    phone = stdin.readLineSync()!;
    phoneIsValid = phoneValidation(phone);
    if (phoneIsValid != null) {
      stderr.writeln(phoneIsValid);
    }
  } while (phoneIsValid != null);

  String? cpfIsValid;
  String cpf;

  do {
    print('\nInforme seu CPF:');
    cpf = stdin.readLineSync()!;
    cpfIsValid = cpfValidation(cpf);
    if (cpfIsValid != null) {
      stderr.writeln(cpfIsValid);
    }
  } while (cpfIsValid != null);

  String? passwordIsValid;
  String password;

  do {
    print('\nCrie sua senha de 8 dígitos:');
    password = stdin.readLineSync()!;
    passwordIsValid = passwordValidation(password);
    if (passwordIsValid != null) {
      stderr.writeln(passwordIsValid);
    }
  } while (passwordIsValid != null);

  double monthlyIncome;

  print('\nInforme sua rensa mensal (opcional):');
  monthlyIncome = double.parse(stdin.readLineSync()!);

  AddressUserModel addressUserModel = userAddressModelCreation();

  UserModel user = UserModel(
      name: name,
      address: addressUserModel,
      cpf: cpf,
      monthlyIncome: monthlyIncome,
      phone: phone,
      email: email,
      password: password);

  InputMessage.createUser();
  return user;
}
