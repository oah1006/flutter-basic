import 'package:flutter/foundation.dart';

class Car {
  String? name;
  int? yearOfProduction;
  // this is the constructor

  // Car(String name, int yearOfProduction) {
  //   this.name = name;
  //   this.yearOfProduction = yearOfProduction;
  // }

  // new way
  // Car(this.name, this.yearOfProduction);
  // //Contrustor with named aguments

  Car({
    @required this.name, // @required = not null
    this.yearOfProduction = 2020 // what about "default parameter"?
  });

  @override
  String toString() {
    // TODO: implement toString
    return '${this.name}, ${this.yearOfProduction}';
  }

  void doSomething() {
    print('i am doing somthing...');
  }

  void sayHello({required String personName}) {
    print('Hello $personName');
  }

  //Function as "a variable"

}