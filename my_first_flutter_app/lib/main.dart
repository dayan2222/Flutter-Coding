import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      home: MyWidget()
    );
  }
}

class MyWidget  extends StatefulWidget {
  @override
  MyWidgetState createState(){
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  int _counter = 0;
  increaseCounter(){
    setState(() {
      _counter ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Application'),
      ),
      body: Center(
        child: Text("You have clicked $_counter times"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          increaseCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
