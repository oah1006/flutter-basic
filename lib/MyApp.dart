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

  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
 String _email = "";
 final emailEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    print('Run initState()');
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
    print('Run dispose()');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if(state == AppLifecycleState.paused) {
      print('App is in Background mode');
    } else if (state == AppLifecycleState.resumed) {
      print('App is in Foreground mode');
    }
  }

  Widget build(BuildContext context) {
    print('Run build()');
    return MaterialApp(
      title: "This is the state",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text) {
                    this.setState(() {
                      _email = text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10)
                      ),
                    ),
                    labelText: "Enter your email"
                  ),
                ),
              ),
              Text(
                  "see result here",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue
                  )
              ),
              Text(
                  _email,
                  style: TextStyle(
                      fontSize: 40,
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


