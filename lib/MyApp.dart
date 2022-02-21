import 'dart:ffi';
import 'dart:core';
import 'dart:math';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _contentController = TextEditingController();
  final _amountController = TextEditingController();
  // define states
  String? _content;
  var _amount;
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
    return MaterialApp(
      title: "This is the state",
      home: Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          minimum: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Content',
                  ),
                  controller: _contentController,
                  onChanged: (text) {
                    setState(() {
                      _content = text;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Amount(money)',
                  ),
                  controller: _amountController,
                  onChanged: (text) {
                    setState(() {
                      _amount = double.tryParse(text) ?? 0;
                    });
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    // print('Content = $_content, money\'s amount = $_amount');
                    _scaffoldKey.currentState!.showSnackBar(
                        SnackBar(
                          content: Text('Content = $_content, money\'s amount = $_amount'),
                          duration: Duration(seconds: 3),
                        )
                    );
                  },
                  child: const Text('Insert Transaction'),
                ),
              ]
          )
        )
      )
    );
  }
}


