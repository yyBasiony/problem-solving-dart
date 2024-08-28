import'dart:io';
List<int> print1ToN(int n) {
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
  }
  return numbers;
}

List<int> evenNumbers(int n) {
  List<int> numev = [];
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      numev.add(i);
    }
  }
  if (numev.isEmpty) {
    numev.add(-1);
  }
  return numev;
}

Map<String, int> EOPNNumbers(List<int> numbers) {
  int evenCount = 0;
  int oddCount = 0;
  int positiveCount = 0;
  int negativeCount = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }

    if (num > 0) {
      positiveCount++;
    } else if (num < 0) {
      negativeCount++;
    }
  }

  return {
    'Even': evenCount,
    'Odd': oddCount,
    'Positive': positiveCount,
    'Negative': negativeCount,
  };
}

String fixedPassword(int n) {
  if (n == 1999) {
    return "Correct";
  } else {
    return "Wrong";
  }
}

int max(List<int> numbers) {
  int maxx = numbers[0];

  for (int num in numbers) {
    if (num > maxx) {
      maxx = num;
    }
  }

  return maxx;
}

List<String> multiplicationTable(int n) {
  List<String> results = [];
  for (int i = 1; i <= 12; i++) {
    results.add('$n * $i = ${n * i}');
  }
  return results;
}

int factorial(int num) {
  int fact = 1;
  for (int i = 1; i <= num; i++) {
    fact *= i;
  }
  return fact;
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool isPalindrome(String n) {
  int i = 0;
  int j = n.length - 1;
  while (i < j) {
    if (n[i] != n[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}
List<int> findPrimes(int n) {
  List<int> primes = [];

  for (int i = 2; i <= n; i++) {
    bool isPrime = true;

    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      primes.add(i);
    }
  }

  return primes;
}
List<int> Divisors(int n) {
  List<int> divisors = [];

  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      divisors.add(i);
    }
  }

  return divisors;
}

int GCD(int n, int m) {
  for (int i = n < m ? n : m; i >= 1; i--) {
    if (n % i == 0 && m % i == 0) {
      return i;
    }
  }
  return 1;
}
List<int> LuckyNumbers(int num1, int num2) {
  List<int> luckyNumbers = [];

  for (int i = num1; i <= num2; i++) {
    bool isLucky = true;
    int n = i;

    while (n != 0) {
      int digit = n % 10;
      n ~/= 10;

      if (digit != 7 && digit != 4) {
        isLucky = false;
        break;
      }
    }
    if (isLucky) {
      luckyNumbers.add(i);
    }
  }
  if (luckyNumbers.isEmpty) {
    luckyNumbers.add(-1);
  }
  return luckyNumbers;
}
void numberHistogram(String ch, int num, List<int> s) {
  for (int i = 0; i < num; i++) {
    print(ch * s[i]);
  }
}
void pyramid(int num) {
  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}
void shape1(int num) {
  for (int i = 1; i <= num; i++) {
    String row = '*' * (num - i + 1);
    print(row);
  }
}
void Digits(int n) {
  if (n == 0) {
    stdout.write('0');
  } else {
    while (n != 0) {
      stdout.write('${n % 10} ');
      n ~/= 10;
    }
  }
  stdout.writeln();
}

void sequenceOfNumbers(int n, int m) {
  int sum = 0;
  int start = n < m ? n : m;
  int end = n > m ? n : m;

  for (int i = start; i <= end; i++) {
    sum += i;
    stdout.write('$i ');
  }
  stdout.writeln('sum =$sum');
}

void sumOfConsecutive(int x, int y) {
  int sum = 0;
  int start = x < y ? x : y;
  int end = x > y ? x : y;

  if ((end - start) == 1) {
    stdout.writeln(0);
  } else {
    for (int i = start + 1; i < end; i++) {
      if (i % 2 != 0) {
        sum += i;
      }
    }
    stdout.writeln(sum);
  }
}
void shape2(int num) {
  for (int i = 0; i < num; i++) {
    for (int j = num - i; j > 1; j--) {
      stdout.write(' ');
    }

    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write('*');
    }

    stdout.writeln();
  }
}
int someSums(int a, int b, int d) {
  int Tsum = 0;

  for (int i = 1; i <= a; i++) {
    int sum = 0;
    int n = i;

    while (n != 0) {
      sum += n % 10;
      n ~/= 10;
    }

    if (sum >= b && sum <= d) {
      Tsum += i;
    }
  }

  return Tsum;
}
String PUM(int lines) {
  String result = '';
  int cntr = 1;

  for (int i = 1; i <= lines; i++) {
    if (cntr % 4 == 0) {
      cntr++;
      result += 'PUM\n';
      i--;
      continue;
    }
    result += '$cntr ${cntr + 1} ${cntr + 2}\n';
    cntr += 3;
  }
  result += 'PUM';

  return result.trim();
}
String shap3(int lines) {
  String result = '';
  int spaces = lines - 1;

  for (int i = 1; i <= lines; i++) {
    result += ' ' * spaces;
    result += '*' * (i * 2 - 1);
    result += '\n';
    spaces--;
  }

  spaces = 1;

  for (int i = lines - 1; i >= 1; i--) {
    result += ' ' * spaces;
    result += '*' * (i * 2 - 1);
    result += '\n';
    spaces++;
  }

  return result.trim();
}

int convertToDecimal(int n) {
  int ones = 0;
  while (n > 0) {
    if (n % 2 == 1) {
      ones++;
    }
    n ~/= 2;
  }
  return ones;
}

int calculateResult(int ones) {
  int result = 0;
  for (int i = 0; i < ones; i++) {
    result += (1 << i);
  }
  return result;
}
void Fibonacci(int n) {
  int str = 0, second = 1;
  if (n == 1) {
    print(str);
  } else if (n == 2) {
    print("$str $second");
  } else {
    stdout.write("$str $second ");
    for (int i = 2; i < n; i++) {
      int res = str + second;
      stdout.write("$res ");
      str = second;
      second = res;
    }
    print("");
  }
}
int threeNumbers (int K, int S) {
  int counter = 0;

  for (int X = 0; X <= K; ++X) {
    for (int Y = 0; Y <= K; ++Y) {
      int Z = S - X - Y;
      if (Z >= 0 && Z <= K) {
        ++counter;
      }
    }
  }

  return counter;
}





void main() {
  List<int> numbers1ToN = print1ToN(5);
  for (int number in numbers1ToN) {
    print(number);
  }

  List<int> numev = evenNumbers(10);
  for (int i in numev) {
    print(i);
  }

  List<int> numbers = [-5, 0, -3, -4, 12];
  Map<String, int> result = EOPNNumbers(numbers);
  print("Even: ${result['Even']}");
  print("Odd: ${result['Odd']}");
  print("Positive: ${result['Positive']}");
  print("Negative: ${result['Negative']}");

  print(fixedPassword(1999));

  print(max([1, 8, 5, 7, 5]));

  List<String> table = multiplicationTable(2);
  for (String line in table) {
    print(line);
  }

  print(factorial(5));
  print("Is 11 a prime? ${isPrime(11) ? 'YES' : 'NO'}");

  print("Is palindrom? ${isPalindrome(12121.toString()) ? 'YES' : 'NO'}");
  List<int> primes = findPrimes(10);
  print(primes);
  List<int> divisors = Divisors(6);
  for (int divisor in divisors) {
    print(divisor);
  }
  int gcd = GCD(12, 8);
  print(gcd);
  List<int> luckyNumbers = LuckyNumbers(4, 20);
  for (int num in luckyNumbers) {
    print(num);
  }
  numberHistogram('+', 5, [5, 2, 4, 3, 7]);
  pyramid(4);
  shape1(4);
    Digits(121);
  sequenceOfNumbers(5 ,2);
  sumOfConsecutive(5,6);
  shape2(4);
  someSums(20,2,5);
  PUM(7);
 print( shap3(4));
 print(convertToDecimal(3));
  Fibonacci(7);
  print(threeNumbers(2,1));
}
