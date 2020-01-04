import 'package:events_app/ui/pages/home-page-background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: <Widget>[
					HomePageBackground(screenHeight: MediaQuery.of(context).size.height)
				],
			),
		
		);
	}
}