import 'package:events_app/styleguide.dart';
import 'package:events_app/ui/pages/home-page-background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: <Widget>[
					HomePageBackground(screenHeight: MediaQuery.of(context).size.height),

					SafeArea(
						child: SingleChildScrollView(
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									
									//TOP ITENS 
									Padding(
										padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 22.0),
										child: Row(
											children: <Widget>[
												Text("LOCAL EVENTS", style: fadedTextStyle,),
												Spacer(),
												Icon(
													Icons.person_outline,
													color: Color(0x99FFFFFF),
													size: 30,
												)
											],
										)
									)


								],
							),
						),
					)
				],
			),
		
		);
	}
}