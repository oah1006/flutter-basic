import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';


// You can define your own Widget
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);

  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    // now how to display a DateTime?
    DateTime now = new DateTime.now();
    DateTime someDate = new DateTime(2020, 5, 2);
    return MaterialApp(
      title: "This is the state",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  // DateFormat('yyyy/MM/dd').format(now),
                  // DateFormat.yMMMd().format(now),
                  // U can also format a number
                  NumberFormat('###.0#', 'en_US').format(12.345678),
                  // let's use extra library
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue
                  )
              ),
            ]
          )
        )
      )
    );
  }
}


