import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Login()
));

MyApp(){}

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String google='GOOGLE';
  int sum=0;
  List<int> num = [2,3,4,5,6,9];
  @override
  Widget cardTemplate(x){
    return Card(
      margin: EdgeInsets.all(1.0),
      color: Colors.red,
      child: Column(
        children: [
          SizedBox(height: 20.0,width: 30.0,),
          Text(
            '${x} + ',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Itim',
            ),
          ),
          FlatButton.icon(
              onPressed: (){
                setState(() {
                  num.remove(x);
                });
              },
              icon: Icon(Icons.delete),
              label: Text('DELETE')
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Tao Zhe\'s apps',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SyneTactile',
              fontWeight: FontWeight.bold
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[50],
        shadowColor: Colors.brown,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Row(
              children: num.map((x) => cardTemplate(x)).toList(),
            ),
            SizedBox(height: 80.0,),
            Image.asset(
              'assets/18plus_orig.png',
              height: 100,
              width: 1000,
            ),
            Divider(height: 100.0, color: Colors.grey[300] ,thickness: 0.0, ),
            Container(
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'OpenSansCondensed',
                  fontWeight: FontWeight.w200,
                  fontSize: 25.0,
                  textBaseline: TextBaseline.ideographic
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Text(
                'Password',
                style: TextStyle(
                    fontFamily: 'OpenSansCondensed',
                    fontWeight: FontWeight.w200,
                    fontSize: 25.0,
                    textBaseline: TextBaseline.ideographic
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            IconButton(
              icon: Icon(Icons.email),
              iconSize: 40.0,
              color: Colors.red[600],
              onPressed: (){},
            ),
            SizedBox(width: 100.0, height: 20),
            Container(
              width: 300.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue[800],
                onPressed: (){},
                child: Text(
                  'FACEBOOK',
                  style: TextStyle(
                    fontFamily: 'OpenSansCondensed',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0
                  ),
                ),
              ),
            ),
            SizedBox(width: 100.0, height: 20),
            Container(
              width: 300.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.red[800],
                onPressed: (){},
                child: Text(
                  '$google',
                  style: TextStyle(
                      fontFamily: 'OpenSansCondensed',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Whats UP'),
        onPressed: (){Colors.pink[200];},

      )
    );
  }
}

