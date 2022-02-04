import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const EightballApp());
}

class EightballApp extends StatefulWidget {
  const EightballApp({Key? key}) : super(key: key);

  @override
  _EightballAppState createState() => _EightballAppState();
}

class _EightballAppState extends State<EightballApp> {
  int imgNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            '8Ball',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    imgNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$imgNumber.png')),
          ),
        ),
      ),
    );
  }
}
