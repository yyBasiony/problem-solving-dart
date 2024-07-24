import 'dart:io';

void main() {
  const double pi = 3.141592653;
  double? r;
  double? area;

  String? input = stdin.readLineSync();

  if (input != null) {
    r = double.parse(input);
    area = r * r * pi;
    print("$area");
  } else {
    print('is null');
  }
}
