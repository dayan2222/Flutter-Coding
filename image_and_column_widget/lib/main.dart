import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Image & Column",
      home: Scaffold(
        appBar: AppBar(
          title: Text('I&C Example'),
        ),
        body: Center(
          child: MyLogo(),
        ),
      ),
    );
  }
}

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 120.0,
          width: 120.0,

          child: Image.asset("assets/image/twitter_logo.jpg"),
        ),
        Text("Twitter",style: TextStyle(
            fontSize:40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54
        ),)

      ],
    );
  }
}

