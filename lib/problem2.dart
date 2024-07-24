import 'dart:io';

void main() {
  int? a, b;
  double? d, e;
  String? c;

  // قراءة البيانات من المستخدم كسطر واحد
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(' ');

  // تحويل البيانات إلى الأنواع المطلوبة
  a = int.parse(inputs[0]);
  b = int.parse(inputs[1]);
  c = inputs[2];
  d = double.parse(inputs[3]);
  e = double.parse(inputs[4]);

  // طباعة القيم
  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
}
