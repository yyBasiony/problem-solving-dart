import 'dart:io';
import 'dart:math';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int a = int.parse(input[0]);
  int b = int.parse(input[1]);

  double result = a / b;
  int floorResult = result.floor();
  int ceilResult = result.ceil();
  int roundResult = result.round();

  print('floor $a / $b = $floorResult');
  print('ceil $a / $b = $ceilResult');
  print('round $a / $b = $roundResult');
}
