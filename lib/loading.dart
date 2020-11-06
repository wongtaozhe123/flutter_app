import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: loading(),
));

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 2), () {
  //     Navigator.pushReplacementNamed(context, '/home');
  //   });
  //   print('XxXxXXxxX');
  // }

  @override
  Widget build(BuildContext context) {
    Map tempx=ModalRoute.of(context).settings.arguments;
    String temp = tempx['temp'];
    return Scaffold(
      body: Center(
        child: Text(
          '$temp',
          style: TextStyle(
            fontSize: 50.0,
            letterSpacing: 2.0,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}

