import 'dart:io';
main() {
  int? a;
  int? b;
  String input = stdin.readLineSync()!;
  List<String>inputes = input.split(' ');
  a = int.parse(inputes[0]);
  b = int.parse(inputes[1]);
  if((a%b==0)||(b%a==0))
    {
      print("Multiples");
    }else{
    print("No Multiples");
  }
}