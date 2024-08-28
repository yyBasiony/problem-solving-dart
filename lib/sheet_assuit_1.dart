import 'dart:math';

String sayHello(String s) {
  return "Hello, $s";
}

String basicData(int a, int b, String c, double d, double e) {
  return "$a\n$b\n$c\n$d\n$e";
}

String simpleCalculator(int x, int y) {
  return "$x + $y = ${x + y}\n$x * $y = ${x * y}\n$x - $y = ${x - y}";
}
int difference(int a, int b, int c, int d) {

  return (a * b) - (c * d);
}

double areaCircle(double pi, double r) {
  return (r * r * pi);
}

int digitsSummation(int n, int m) {
  return ((n % 10) + (m % 10));
}

double summationFrom1ToN(int n) {
  return ((n * (n + 1)) / 2);
}

double twoNnmbers(int a, int b) {
  return (a / b);
}

String welcomeConditions(int a, int b) {
  return a >= b ? "Yes" : "No";
}

String multiples(int a, int b) {
  return (a % b == 0 || b % a == 0) ? "Multiples" : "No Multiples";
}

String maxAndMin(int a, int b, int c) {
  if (a <= b && a <= c) {
    return b <= c ? "$a\t$c" : "$a\t$b";
  } else if (b <= a && b <= c) {
    return a <= c ? "$b\t$c" : "$b\t$a";
  } else {
    return a <= b ? "$c\t$b" : "$c\t$a";
  }
}
String theBrothers(String r1, r2, String a1, String a2) {
  return r2 == a2 ? "ARE Brothers" : "NOT";
}
String capitalORSmallORDigit(String a) {
  const smallLetters = 'abcdefghijklmnopqrstuvwxyz';
  const capitalLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const digits = '0123456789';
  if (smallLetters.contains(a)) {
    return "ALPHA\nIS SMALL";
  } else if (capitalLetters.contains(a)) {
    return "ALPHA\nIS CAPITAL";
  } else if (digits.contains(a)) {
    return "IS DIGIT";
  } else {
    return "INVALID";
  }
}

String Char(String x) {
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  if (lowercase.contains(x)) {
    return uppercase[lowercase.indexOf(x)];
  } else if (uppercase.contains(x)) {
    return lowercase[uppercase.indexOf(x)];
  } else {
    throw ArgumentError('enter single character');
  }
}

int calculator(int a, int b, String x) {
  if (x == '+') {
    return a + b;
  } else if (x == '-') {
    return a - b;
  } else if (x == '*') {
    return a * b;
  } else if (x == '/') {
    return a ~/ b;
  } else {
    throw ArgumentError('Invalid');
  }
}

String firstDigit(int num) {
  num = num.abs();
  while (num >= 10) {
    num = num ~/ 10;
  }
  return (num % 2 == 0) ? "EVEN" : "ODD";
}

String coordinatesPoint(double x, double y) {
  if (x == 0 && y == 0) {
    return "Origem";
  } else if (x == 0) {
    return "Eixo Y";
  } else if (y == 0) {
    return "Eixo X";
  } else if (x > 0 && y > 0) {
    return "Q1";
  } else if (x < 0 && y > 0) {
    return "Q2";
  } else if (x < 0 && y < 0) {
    return "Q3";
  } else if (x > 0 && y < 0) {
    return "Q4";
  } else {
    return "INVALID";
  }
}

String ageInDay(int num) {
  int year = num ~/ 365;
  int daysAfterYears = num % 365;
  int month = daysAfterYears ~/ 30;
  int day = daysAfterYears % 30;
  return "$year years\n$month months\n$day days";
}

String interval(double x) {
  if (x >= 0 && x <= 25) {
    return "Interval [0,25]";
  } else if (x > 25 && x <= 50) {
    return "Interval (25,50]";
  } else if (x > 50 && x <= 75) {
    return "Interval (50,75]";
  } else if (x > 75 && x <= 100) {
    return "Interval (75,100]";
  } else {
    return "Out of Intervals";
  }
}

String sortNumber(int a, int b, int c) {
  List<int> numbers = [a, b, c];
  numbers.sort();
  return "${numbers[0]}\n${numbers[1]}\n${numbers[2]}";
}

String floatOrInt(double x) {
  int y = x.toInt();
  double w = x - y;
  return w > 0 ? "float\t$y\t$w" : "int\t$y";
}

String comparison(int x, int y, String s) {
  if ((s == '>' && x > y) || (s == '<' && x < y) || (s == '=' && x == y)) {
    return "Right";
  } else {
    return "Wrong";
  }
}

String mathematicalExpression(int x, int y, int q, String s) {
  int t;
  if (s == '+') {
    t = x + y;
  } else if (s == '-') {
    t = x - y;
  } else if (s == '*') {
    t = x * y;
  } else {
    return "Incorrect ";
  }
  return (q == t) ? "Yes" : "$t";
}

String toIntervals(int l1, int l2, int t1, int t2) {
  int start1 = min(l1, l2);
  int end1 = max(l1, l2);
  int start2 = min(t1, t2);
  int end2 = max(t1, t2);
  if (end1 < start2 || end2 < start1) {
    return "-1";
  } else {
    int start = max(start1, start2);
    int end = min(end1, end2);
    return "$start\t$end";
  }
}

String last2Interger(int l1, int l2, int r1, int r2) {
  int x = ((l1 % 100) * (l2 % 100) * (r1 % 100) * (r2 % 100)) % 100;
  return (x <= 10) ? "0\t$x" : "$x";
}

String hardCompare(int a, int b, int c, int d) {
  return (b * log(a) > d * log(c)) ? "YES" : "NO";
}

void main() {
  print(sayHello("programmer\n"));
  print(basicData(3, 12345678912345, "a", 334.23, 14049.30493));
  print(simpleCalculator(5, 10));
  int differencee = difference(1, 2, 3, 4);
  print("Difference = $differencee");
  double area = areaCircle(3.141592653, 2);
  print("$area");
  int sum = digitsSummation(13, 12);
  print("$sum");
  double summation = summationFrom1ToN(3);
  print("$summation");
  double x = twoNnmbers(10, 3);
  print("floor 10/3 = ${x.floor()}");
  print("ceil 10/3 = ${x.ceil()}");
  print("round 10/3 = ${x.round()}");
  print(welcomeConditions(10, 9));
  print(multiples(9, 3));
  print(maxAndMin(1, 2, 3));
  print(theBrothers("bassam", "ramadan", "ahmed", "ramadan"));
  print(capitalORSmallORDigit('A'));
  String ch = Char('A');
  print('$ch');
   print(calculator(7, 54, '+'));
   print(firstDigit(4569));
  print(coordinatesPoint(4.5, -2.2));
   print(ageInDay(400));
   print(interval(25.1));
   print(sortNumber(3, -2, 1));
   print(floatOrInt(234.000));
   print(comparison(5, 4, '>'));
   print(toIntervals(1, 15, 5, 27));
}