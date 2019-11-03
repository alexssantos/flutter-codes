import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Leading"),
        title: Text("Todo List Title AppBar"),
        actions: <Widget>[
          Icon(Icons.plus_one),
        ],
      ),
      body: Container(
        child: Text("Olá Mundo"),
      ),
    );
  }
}
