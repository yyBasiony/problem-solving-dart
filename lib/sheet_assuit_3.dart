import'dart:math';
int summation(int n,List<int>a){
  int sum=0;
  for(int i=0;i<n;i++){
    sum+=a[i];
  }
  return sum.abs();
}
int searching(int n,List<int>a,int x){
  for(int i=0;i<n;i++){
    if(a[i]==x){
      return i;
    }
  }
  return -1;
}
List<int> replacement(int n,List<int>a){
  for(int i=0;i<n;i++){
    if(a[i]>0)
      a[i]=1;
    else if(a[i]<0)
      a[i]=2;
  }
  return a;
}
String positionInArray(int n,List<int>a){
  String result = '';
  for(int i=0;i<n;i++){
    if(a[i]<=10)
      result+='A[$i] = ${a[i]}\n';
  }
  return result.isEmpty ? 'No elements <= 10' : result;
}
List<int>lowestNumber(int n,List<int>a){
  int min=a[0];int x=0;
  for(int i=1;i<n;i++){
    if(a[i]<min){
      min=a[i];
      x=i;

    }
  }
  return [min,x+1];
}
List<int>Reversing(int n,List<int>a){
  return a.reversed.toList();
}
String palindromArray(int n,List<int>a){
  for(int i=0,j=n-1;i<j;i++,j--){
    if(a[i]!=a[j])
      return"NO";
  }
  return  "YES";

}
List<int> sorting(int n, List<int> a) {
  List<int> sortedList = List.from(a);
  sortedList.sort();
  return sortedList;
}

int smallestPair(List<int> a) {
  int minResult = 2147483647;
  int N = a.length;
  for (int i = 0; i < N - 1; i++) {
    for (int j = i + 1; j < N; j++) {
      int result = a[i] + a[j] + j - i;
      minResult = min(minResult, result);
    }
  }

  return minResult;
}
String luckyrray(int n, List<int> a) {
  a.sort();
  int minElement = a[0];
  int count = 0;
  for (int i = 0; i < n; i++) {
    if (a[i] == minElement) {
      count++;
    } else {
      break;
    }
  }
  if (count % 2 != 0) {
    return "Lucky";
  } else {
    return "Unlucky";
  }
}

int digitSum(List<int> digits, int n) {
  int sum = 0;
  for (int i = 0; i < n; i++) {
    sum += digits[i];
  }
  return sum;
}
String maxInSubarrays(int N, List<int> A) {
  List<int> result = [];
  for (int i = 0; i < N; i++) {
    int maxElement = A[i];
    for (int j = i; j < N; j++) {
      maxElement = max(maxElement, A[j]);
      result.add(maxElement);
    }
  }
  return result.join(" ");
}
List<int> replaceMinMax(int n, List<int> a) {
  if (n < 2 || n != a.length) {
    throw ArgumentError("Invalid input.");
  }
  int minIndex = 0;
  int maxIndex = 0;

  for (int i = 1; i < n; i++) {
    if (a[i] < a[minIndex]) {
      minIndex = i;
    }
    if (a[i] > a[maxIndex]) {
      maxIndex = i;
    }
  }
  int temp = a[minIndex];
  a[minIndex] = a[maxIndex];
  a[maxIndex] = temp;

  return a;
}
String checkCode(int A, int B, String S) {
  if (S.length != A + B + 1) {
    return "No";
  }
  if (S[A] != '-') {
    return "No";
  }
  for (int i = 0; i < S.length; i++) {
    if (i != A) {
      try {
        int digit = int.parse(S[i]);
        if (digit < 0 || digit > 9) {
          return "No";
        }
      } catch (e) {
        return "No";
      }
    }
  }

  return "Yes";
}
int fibonacci(int n) {
  if (n == 1) return 0;
  if (n == 2) return 1;

  int a = 0, b = 1, c;

  for (int i = 3; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
  }

  return b;
}

int minimizeNumber(int n, List<int> a) {
  int operations = 0;
  while (a.every((num) => num % 2 == 0)) {
    a = a.map((num) => num ~/ 2).toList();
    operations++;
  }

  return operations;
}
int countSubarray(int n, List<int> a) {
  int count = 0;
  int length = a.length;

  for (int start = 0; start < length; start++) {
    int end = start;

    while (end + 1 < length && a[end] <= a[end + 1]) {
      end++;
    }

    int len = end - start + 1;
    count += (len * (len + 1)) ~/ 2;
  }

  return count;
}
String Permutation(int n, List<int> A, List<int> B) {
  if (A.length != B.length) {
    return 'no';
  }

  A.sort();
  B.sort();

  for (int i = 0; i < A.length; i++) {
    if (A[i] != B[i]) {
      return 'no';
    }
  }

  return 'yes';
}
String searchInMatrix(int n, int m, List<List<int>> matrix, int x) {
  for (var row in matrix) {
    for (var element in row) {
      if (element == x) {
        return 'will not take number';
      }
    }
  }
  return 'will take number';
}

int matrix(int n, List<List<int>> matrix) {
  int primaryDiagonalSum = 0;
  int secondaryDiagonalSum = 0;

  for (int i = 0; i < n; i++) {
    primaryDiagonalSum += matrix[i][i];
    secondaryDiagonalSum += matrix[i][n - 1 - i];
  }

  return (primaryDiagonalSum - secondaryDiagonalSum).abs();
}
String isSubsequence(int n, int m, List<int> A, List<int> B) {
  int j = 0;
  for (int i = 0; i < n; i++) {
    if (j < m && A[i] == B[j]) {
      j++;
    }
  }
  return j == m ? "YES" : "NO";
}

void frequencyArray(int n, int m, List<int> A) {
  List<int> frequency = List<int>.filled(m, 0);
  for (int num in A) {
    frequency[num - 1]++;
  }
  for (int i = 0; i < m; i++) {
    print(frequency[i]);
  }
}
void MirrorArray(int n, int m, List<List<int>> matrix) {
  for (var row in matrix) {
    row = row.reversed.toList();
    print(row.join(' '));
  }
}

String Neighbors(int row, int column, List<String> arr, int rowIn, int columnIn) {
  List<List<String>> matrix = arr.map((line) => line.split('')).toList();

  List<int> dx = [-1, -1, -1, 0, 0, 1, 1, 1];
  List<int> dy = [-1, 0, 1, -1, 1, -1, 0, 1];

  for (int i = 0; i < 8; i++) {
    int newX = rowIn - 1 + dx[i];
    int newY = columnIn - 1 + dy[i];
    if (newX >= 0 && newX < row && newY >= 0 && newY < column) {
      if (matrix[newX][newY] != 'x') {
        return "no";
      }
    }
  }

  return "yes";
}

List<int> rangeSum(int n, List<int> a, int l, int r) {
  List<int> prefix = List<int>.filled(n + 1, 0);

  for (int i = 0; i < n; i++) {
    prefix[i + 1] = prefix[i] + a[i];
  }

  int sum = prefix[r] - prefix[l - 1];

  return [sum];
}

String binarySearch(List<int> sortedArray, int target) {
  int left = 0;
  int right = sortedArray.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (sortedArray[mid] == target) {
      return 'found';
    } else if (sortedArray[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return 'not found';
}

List<String> binarySearchForQueries(int n, int q, List<int> array, List<int> queries) {
  array.sort();
  List<String> results = [];
  for (int query in queries) {
    results.add(binarySearch(array, query));
  }
  return results;
}


void main() {
print(summation(4, [7, 2, 1, 3]));
print(searching(3, [3, 0, 1], 0));
print(replacement(5, [1, -2, 0, 3, 4]));
print(positionInArray(5, [1, 2, 100, 0, 30]));
print(lowestNumber(3, [1, 2, 3]));
print(Reversing(4, [5, 1, 3, 2]));
print(palindromArray(5, [1, 3, 2, 3, 1]));
print(sorting(3, [3, 1, 2]));
print(smallestPair([20, 1, 9, 4]));
print(luckyrray(5, [8, 8, 9, 5, 9]));
print(digitSum([1, 3, 3, 0, 5], 5));
print(maxInSubarrays(4, [1, 6, 3, 7]));
print(replaceMinMax(5, [4, 1, 3, 10, 8]));
print(checkCode(3, 3, '269-665'));
print(fibonacci(1));
print(minimizeNumber(3,[8,12,40]));
print(countSubarray(5,[1,4,2,3,5]));
print(Permutation(4,[4,2,3,7],[2,3,4,9]));
print(searchInMatrix(2, 2, [[1, 2], [3, 4]], 3));
print(matrix(4, [[1, 5, 12, 1], [2, -4, 6, 7], [3, 8, 5, 9], [3, 5, 23, -6]]));
print(isSubsequence(3, 2, [1, 4, 7], [1, 7]));
frequencyArray(10, 5, [1, 2, 3, 4, 5, 3, 2, 1, 5, 3]);
MirrorArray(3, 3, [[2, 3, 5], [7, 9, 20], [35, 1, 12]]);
print(Neighbors(3, 3, ['xxx', 'x.x', 'xxx'], 2, 2));
print(rangeSum(6, [6, 4, 2, 7, 2, 7], 1, 3));
List<String> results = binarySearchForQueries(5, 3, [1, 5, 4, 3, 2], [5, 3, 6]);
for (String result in results) {
  print(result);
}

}