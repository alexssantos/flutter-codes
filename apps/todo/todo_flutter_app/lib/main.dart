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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          //margin: const EdgeInsets.all(30.0),
          //padding: const EdgeInsets.all(10.0),
          decoration: myBoxDecoration(),
          child: Text("Leading"),
        ),
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

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 2,
    ),
  );
}
