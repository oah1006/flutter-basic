import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


String s1 = 'How are you?';
String s2 = ' I\'m fine';
String content = '$s1 - $s2';
List<int> numbers = [1, 4, 6, 8];
List<String> stringNumbers = numbers.map((number) {
  return 'value = $number';
}).toList();

void main() {
  // for (int i = 0; i < numbers.length; i++) {
  //   print(numbers[i]);
  // }

  // numbers.forEach((number) {
  //   print(number);
  // });

  stringNumbers.forEach((str) {
    print(str);
  });

  runApp(
    Center(
      child: Text(
        '$stringNumbers',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40),
      )
    )
  );
}

