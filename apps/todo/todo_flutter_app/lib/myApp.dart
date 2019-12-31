import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/Tarefa.dart';

class MyApp extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
		
		MaterialApp app = new MaterialApp(
			debugShowCheckedModeBanner: false,

			title: "Alex Todo app",
			//=> NOTE: primarySwatch (PALETA DE CORES)
			theme: ThemeData(primarySwatch: Colors.blue),
			home: HomePage(),
		);

		return app;
  	}
}

class HomePage extends StatefulWidget {
  	var tarefas = new List<Tarefa>();

	HomePage() {
		tarefas = [
			Tarefa(title: "Tarefa 1", done: false),
			Tarefa(title: "Tarefa 2", done: true),
			Tarefa(title: "Tarefa 3", done: false)
		];
	}

	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	var newTaskCtrl = new TextEditingController();


	void funcAddItem(){
		if (newTaskCtrl.text.isEmpty) return;
		setState(() {
			widget.tarefas.add(new Tarefa(
				title: newTaskCtrl.text,
				done: false));
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			
			appBar: funcSetAppBarPage(newTaskCtrl),
			
			//metodo BUILDER aumenta a performance como uma recycle View. //Usar Future() para consultar api ou service.
			body: ListView.builder(
				itemCount: widget.tarefas.length,

				itemBuilder: (BuildContext ctx, int index) {
					final item = widget.tarefas[index];
				
					return CheckboxListTile(
						title: Text(item.title),
						key: Key(item.title),
						value: item.done,

						onChanged: (value) {
							//State.setState() => Precisa rerenderizar mas não pode chamar daqui o metodo builder()
							setState(() => item.done = value);
						},
					);
				},
			),

			floatingActionButton: FloatingActionButton(
				onPressed: funcAddItem,
				child: Icon(Icons.add),
				backgroundColor: Colors.purpleAccent,
			),
		);
	}
}

BoxDecoration myBoxDecoration() {
	return BoxDecoration(
		border: Border.all(
			width: 2
		),
	);
}

AppBar funcSetAppBarPage(TextEditingController newTaskCtrl){
	var _appBar = new AppBar(
		title: TextFormField(
			
			controller: newTaskCtrl,
			keyboardType: TextInputType.text,
			style: TextStyle(
				color: Colors.white, 
				fontSize: 18
			),
			decoration: InputDecoration(
				labelText: "Nova Tarefa",
				labelStyle: TextStyle(color: Colors.white),
			),

		),
	);

	return _appBar;
}