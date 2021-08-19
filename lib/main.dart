import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(title: Text("My counter App")),
          body: Center(
              child: Text(
            "Counter\n$count",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              increment();
            },
            child: Icon(Icons.add),
          ),
        ));
  }
}
