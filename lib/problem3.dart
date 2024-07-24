import 'dart:io';

void main() {
  int? a, b;
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(' '); // تقسيم المدخلات بناءً على المسافة
  a = int.parse(inputs[0]);
  b = int.parse(inputs[1]);
  print('a + b = ${a + b}');
  print('a * b = ${a * b}');
  print('a - b = ${a - b}');
}
