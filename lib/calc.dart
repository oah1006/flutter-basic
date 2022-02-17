String s1 = 'How are you?';
String s2 = ' I\'m fine';
String content = '$s1 - $s2';
List<int> numbers = [1, 4, 6, 8];
List<String> stringNumbers = numbers.map((number) {
  return 'value = $number';
}).toList();