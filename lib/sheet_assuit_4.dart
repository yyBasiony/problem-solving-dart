String createNewString(String str1, String str2) {
  int str11 = str1.length;
  int str22 = str2.length;
  return '$str11\t$str22\n$str1\t$str2';
}

String letUseGetile(String str) {
  for (var i = 0; i < str.length; i++) {
    if (str[i] == '\\') {
      return str.substring(0, i);
    }
  }
  return str;
}

String compare(String str1, String str2) {
  if (str1.compareTo(str2) <= 0) {
    return str1;
  } else {
    return str2;
  }
}

String Strings(String str1, String str2) {
  int str11 = str1.length;
  int str22 = str2.length;
  String newstr1 = str2[0] + str1.substring(1);
  String newstr2 = str1[0] + str2.substring(1);

  return '$str11\t$str22\n$str1$str2\n$newstr1\t$newstr2';
}

int count(String str) {
  int len = str.length;
  int sum = 0;
  for (int i = 0; i < len; i++) {
    sum += int.parse(str[i]);
  }
  return sum;
}
String wayTooLong(String s) {
  int len = s.length;

  if (len <= 10) {
    return s;
  } else {
    return '${s[0]}${len - 2}${s[len - 1]}';
  }
}

String Conversion(String s) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (char == ',') {
      result += ' ';
    } else if (char.toLowerCase() == char) {
      result += char.toUpperCase();
    } else {
      result += char.toLowerCase();
    }
  }
  return result;
}
String goodBad(String s) {
  for (int i = 0; i < s.length - 2; i++) {
    if ((s[i] == '0' && s[i + 1] == '1' && s[i + 2] == '0') ||
        (s[i] == '1' && s[i + 1] == '0' && s[i + 2] == '1')) {
      return "Good";
    }
  }
  return "Bad";
}

String palindrome(String s) {
  String reversed = s.split('').reversed.join('');
  if (s == reversed) {
    return "YES";
  } else {
    return "NO";
  }
}
Map<String, int> countLetters(String s) {
  List<int> count = List.filled(26, 0);

  for (int i = 0; i < s.length; i++) {
    count[s[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
  }

  Map<String, int> characterCounts = {};
  for (int i = 0; i < 26; i++) {
    if (count[i] > 0) {
      characterCounts[String.fromCharCode(i + 'a'.codeUnitAt(0))] = count[i];
    }
  }

  return characterCounts;
}
String loveString(String s1, String s2) {
  String result = '';
  int maxLength = s1.length > s2.length ? s1.length : s2.length;

  for (int i = 0; i < maxLength; i++) {
    if (i < s1.length) {
      result += s1[i];
    }
    if (i < s2.length) {
      result += s2[i];
    }
  }

  return result;
}

String subsequence(String s) {
  String target = "hello";
  int j = 0;

  for (int i = 0; i < s.length; i++) {
    if (s[i] == target[j]) {
      j++;
    }
    if (j == target.length) {
      return "YES";
    }
  }
  return "NO";
}
int maxsubseduance(String value, int size) {
  String temp = '';
  int counter = 0;

  for (int i = 0; i < size; i++) {
    if (i == 0) {
      temp = value[i];
      counter++;
    } else {
      if (value[i] != temp) {
        counter++;
        temp = value[i];
      }
    }
  }

  return counter;
}

String sortString(String s, int n) {
  List<String> chars = s.split('');

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (chars[j].compareTo(chars[j + 1]) > 0) {
        String temp = chars[j];
        chars[j] = chars[j + 1];
        chars[j + 1] = temp;
      }
    }
  }

  return chars.join('');
}

int countWords(String s) {
  return s.split(RegExp(r'[^a-zA-Z]+')).where((word) => word.isNotEmpty).length;
}
String reverseWords(String s) {
  List<String> words = s.split(' ');
  List<String> reversedWords = words.map((word) => word.split('').reversed.join('')).toList();
  return reversedWords.join(' ');
}
List<String> maxSplit(String s) {
  int balance = 0;
  List<String> result = [];
  String temp = "";

  for (int i = 0; i < s.length; i++) {
    temp += s[i];
    balance += s[i] == 'L' ? 1 : -1;
    if (balance == 0) {
      result.add(temp);
      temp = "";
    }
  }

  return result;
}

void main() {
  print(createNewString('LEVEL', 'ONE'));
  print(letUseGetile("Egyptian collegiate programming\ contest"));
  print(compare('acm', 'acpc'));
  print(Strings("abcd", "ef"));
  print(count('351'));print(wayTooLong('pneumonoultramicroscopicsilicovolcanoconiosis'));
print(Conversion("happy,NewYear,enjoy"));
print(goodBad('11111110'));
print(palindrome('abba'));
print(countLetters('aaabbc'));
print(loveString("ipAsu ","ccsit"));
print(subsequence('ahhellllloou'));
print(maxsubseduance('ababb',5));
print(sortString("deab",4));
print(countWords("Meep Meep!"));
print(reverseWords("I love you"));
print(maxSplit("LLRRLLLRRR"));
}
