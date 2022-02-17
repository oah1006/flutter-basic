import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'calc.dart';
import 'car.dart';



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

  // how to init an object?
  var myCar = Car(
      name:'Mercedes-MayBach S-Class Saloon',
      yearOfProduction: 2020
  );

  myCar.doSomething();
  myCar.sayHello(
      personName: 'OaHang'
  );



  runApp(
    Center(
      child: Text(
        '${myCar.toString()}',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40),
      )
    )
  );
}

