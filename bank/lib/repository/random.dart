import 'dart:math';

var rnd = Random();
String generateRandomNumber({required int interactionsNumber}) {
  int generatedNumber;

  var listOfRandomNumbers = [];

  for (int i = 0; i < interactionsNumber; i++) {
    generatedNumber = rnd.nextInt(10);
    listOfRandomNumbers.add(generatedNumber);
  }

  String randomNumber = listOfRandomNumbers.join('');

  return randomNumber;
}

String generateDate() {
  var month = DateTime.now().month;
  var year = DateTime.now().year + 10;
  String date = '$month/$year';

  //receber o mes atual
  //ano receber o ano atual +10
  //concatenar esses dois valores adicionando uma / entre eles
  return date;
}
