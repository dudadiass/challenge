import 'dart:math';

var rnd = Random();

String generateNumbers(int numbers) {
  int numberGenerated;
  var list = [];
  for (int i = 0; i < numbers; ++i) {
    numberGenerated = rnd.nextInt(numbers);
    list.add(numberGenerated);
  }
  String randomNumber = list.join('');
  return randomNumber;
}

String generateDate() {
  var month = DateTime.now().month;
  var year = DateTime.now().year + 10;
  String date = '$month/$year';
  return date;
}
