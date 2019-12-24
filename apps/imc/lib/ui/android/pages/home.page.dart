import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	var bloc = new ImcBloc();


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
						controller: bloc.heightCtrl,
						keyboardType: TextInputType.number
					),
				),
	
				Padding(
					padding: EdgeInsets.all(20),

					child: TextFormField(
						decoration: InputDecoration(labelText: "Peso (kg)"),
						controller: bloc.weightCtrl,
						keyboardType: TextInputType.number,
					),
				),

				Padding(
					padding: EdgeInsets.all(20),

					child: Text(
						bloc.result,
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
						
						onPressed: () {
							setState(() {
							  bloc.calculate();
							});
						},
					),
				)
			],
        ),
	);
  }
}
