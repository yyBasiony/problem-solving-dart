import 'dart:io';

void main() {
  int? a, b, c, d, n;
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(' ');

  a = int.parse(inputs[0]);
  b = int.parse(inputs[1]);
  c = int.parse(inputs[2]);
  d = int.parse(inputs[3]);

  n = (a * b) - (d * c);

  print('Difference = $n');
}
