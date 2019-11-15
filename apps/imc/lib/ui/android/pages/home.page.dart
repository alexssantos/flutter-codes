
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cálculo de IMC"),
        ),
  
        body: ListView(
			children: <Widget>[
	
				Padding(
					padding: EdgeInsets.all(20),
					child: TextFormField(
						decoration: InputDecoration(labelText: "Altura (cm)"),
						keyboardType: TextInputType.number
					),
				),
	
				Padding(
					padding: EdgeInsets.all(20),
					child: TextFormField(
						decoration: InputDecoration(labelText: "Peso (kg)"),
						keyboardType: TextInputType.number,
					),
				),

				Padding(
					padding: EdgeInsets.all(20),
					child: Text(
						"Você está fora de forma",
						textAlign: TextAlign.center,
					),
				),

				Padding(
					padding: EdgeInsets.all(20),
					child: FlatButton(
						color: Theme.of(context).primaryColor,
						child: Text(
							"Calcular",
							style: TextStyle(
								color: Colors.white
							),
						),
						onPressed: () {},
					),
				)
				
			],
        ),
	);
  }
}
