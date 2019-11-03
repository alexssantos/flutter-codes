import 'package:flutter/material.dart';
import 'package:todo_flutter_app/models/Tarefa.dart';

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
  var tarefas = new List<Tarefa>();

  HomePage() {
    tarefas = [];
    tarefas.add(Tarefa(title: "Tarefa 1", done: false));
    tarefas.add(Tarefa(title: "Tarefa 2", done: true));
    tarefas.add(Tarefa(title: "Tarefa 3", done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List Title AppBar"),
      ),
      
	  body: ListView.builder(
        itemCount: widget.tarefas.length,
		itemBuilder: (BuildContext ctx, int index){
			return Text(widget.tarefas[index].title);
		},
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
