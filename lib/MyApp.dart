import 'package:flutter/material.dart';
import 'dart:io';

// You can define your own Widget
class MyApp extends StatefulWidget {
//  StatefulWidget has internal "state"
  String? name;
  int? age;
  MyApp({
    this.name,
    this.age
  });

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _email = ''; // this is state!
  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is a StatefulWidget",
      home: Scaffold(
        body: Center(
          // child: Text(
          //   "name: ${widget.name} - age: ${widget.age}",
          //   style: TextStyle(
          //     fontSize: 40,
          //     color: Colors.pink,
          //   )
          // )
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  // how to get value from TextField?
                  controller: emailEditingController,
                  onChanged: (text) {
                    this.setState(() {
                      _email = text; // when state changed => build() rerun -> reload widget
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30)
                        ),
                      ),
                      labelText: "Enter your email: "
                  ),
                )
              ),
              Text(
                'See result here',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue
                )
              ),
              Text(
                  _email,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green
                  )
              )
            ]
          )
        )
      )
    );
  }
}