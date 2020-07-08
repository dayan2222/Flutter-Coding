import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> articleNames = ['Mouse','Keyboard','Hard Disk','RAM','Processor','Monitor','Speaker','Mouse','Keyboard','Hard Disk','RAM','Processor','Monitor','Speaker'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white,),
//              For Event Handling
              onPressed: (){

              },
            ),

            IconButton(
              icon: Icon(Icons.arrow_right, color: Colors.white,),
//              For Event Handling
              onPressed: (){

              },
            ),

          ],

        ),
        body: ListView.separated(
          itemCount: articleNames.length,


          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(articleNames[index], style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),),
            );
          },

          separatorBuilder: (BuildContext context, int index)=>Divider(),
        ),
      ),
    );
  }
}
