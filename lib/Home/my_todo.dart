import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var todo=[
  "ทำการบ้านครั้งที่4 วิชา Mobile App Dev",
  "ทำการบ้านครั้งที่5 วิชา Mobile App Dev",
  "ทำโปรเจควิชา Mobile App Dev"
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title)),
      body: ListView.builder(itemBuilder: (context,i){
        String td = todo[i];
        return Card(
            child: Container(
              padding:const EdgeInsets.all(15.0),
              child :Text(td,style: TextStyle(fontSize: 15.0)),
            )
        );
      },
          itemCount: todo.length),
    );
  }
}