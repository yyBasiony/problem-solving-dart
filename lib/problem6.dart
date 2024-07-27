import 'dart:io';
main(){
  int? a,b;
  String input=stdin.readLineSync()!;
  List<String>inputs= input.split(' ');
  a=int.parse(inputs[0]);
  b=int.parse(inputs[0]);
  int c,d;
  c=a%10;
  d=b%10;
  print("${c+d}");



}