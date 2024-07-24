import 'dart:io';

void main() {
  int?a,b;
  double?e,d;
  String?c;
  String input=stdin.readLineSync()!;
  List<String>inputes=input.split('');
  a=int.parse(inputes[0]);
  b=int.parse(inputes[1]);
  c=inputes[2];
  d=double.parse(inputes[3]);
  e=double.parse(inputes[4]);


print(a);
print(b);
print(c);
print(d);
print(e);


}
