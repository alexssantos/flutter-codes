import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {

	final screenHeight;

	const HomePageBackground({Key key, @required this.screenHeight}) : super(key: key);	

	@override
	Widget build(BuildContext context) {
		final themeData = Theme.of(context);
		
		return Container(
			height: screenHeight * 0.5,
			color: themeData.primaryColor,		
		);
	}
}