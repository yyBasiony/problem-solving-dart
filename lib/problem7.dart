import 'dart:io';
main(){
  int? n=int.parse(stdin.readLineSync()!);
  print("${(n*(n+1))/2}");

}