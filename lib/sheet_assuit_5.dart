import 'dart:math';

int add(int x, int y) {
  return x + y;
}

String prinnt(int n) {
  String result = '';

  for (int i = 1; i <= n; i++) {
    result += i.toString();

    if (i != n) {
      result += ' ';
    }
  }
  return result;
}

bool isOdd(int n) {
  return n % 2 != 0;
}

bool isBinaryPalindrome(int n) {
  String binary = n.toRadixString(2);
  String reversedBinary = binary.split('').reversed.join('');
  return binary == reversedBinary;
}

String checkWonderful(int n) {
  if (isOdd(n) && isBinaryPalindrome(n)) {
    return 'YES';
  } else {
    return 'NO';
  }
}

bool isPrime(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }

  return true;
}

List<String> checkPrimes(List<int> numbers) {
  List<String> results = [];

  for (int n in numbers) {
    if (isPrime(n)) {
      results.add('YES');
    } else {
      results.add('NO');
    }
  }

  return results;
}

List<int> swap(int num1, int num2) {
  int temp = num1;
  num1 = num2;
  num2 = temp;

  return [num1, num2];
}

BigInt equation(int num1, int num2) {
  BigInt result = BigInt.zero;

  for (int i = 2; i <= num2; i += 2) {
    result += BigInt.from(num1).pow(i);
  }

  return result;
}

List<int> findMinMax(List<int> array) {
  int min = array[0];
  int max = array[0];

  for (int value in array) {
    if (value < min) min = value;
    if (value > max) max = value;
  }

  return [min, max];
}
void printCharacterNtimes(int n, String c) {
  List<String> result = List.generate(n, (_) => c);
  print(result.join(' '));
}
void swapRows(List<List<int>> matrix, int rowX, int rowY) {
  List<int> temp = matrix[rowX];
  matrix[rowX] = matrix[rowY];
  matrix[rowY] = temp;
}

void swapColumns(List<List<int>> matrix, int colX, int colY) {
  for (int i = 0; i < matrix.length; i++) {
    int temp = matrix[i][colX];
    matrix[i][colX] = matrix[i][colY];
    matrix[i][colY] = temp;
  }
}

void printMatrix(List<List<int>> matrix) {
  for (List<int> row in matrix) {
    print(row.join(' '));
  }
}
double calculateAverage(List<double> numbers) {
  double sum = numbers.reduce((a, b) => a + b);
  return sum / numbers.length;
}
List<int> shiftRight(List<int> array, int x) {
  int n = array.length;
  x = x % n;
  if (x == 0) return array;

  List<int> result = List.filled(n, 0);

  for (int i = 0; i < n; i++) {
    result[(i + x) % n] = array[i];
  }

  return result;
}



void main() {
  print(add(1, 4));
  print(prinnt(5));
  print(checkWonderful(3));
  List<int> numbers = [3, 2, 4, 8];
  print(checkPrimes(numbers));
  print(swap(5, 2));
  print(equation(5, 5));
  print(findMinMax([10, 13, 95, 1, 3]));
  printCharacterNtimes(1, 'n');
  int n = 4;
  int rowX = 2;
  int rowY = 0;
  int colX = 1;
  int colY = 0;

  List<List<int>> matrix = [
    [1, 2, 3, -5],
    [-5, 4, 0, 3],
    [7, 7, 1, 2],
    [40, 6, 5, 11]
  ];

  swapRows(matrix, rowX, rowY);
  swapColumns(matrix, colX, colY);
  printMatrix(matrix);
  print(calculateAverage([1.0, 2.0 ,5.0]));
  print(shiftRight([1, 2 ,3, 4, 5],21));

}
