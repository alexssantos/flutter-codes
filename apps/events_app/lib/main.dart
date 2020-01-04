import 'package:events_app/ui/pages/home-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
	return MaterialApp(

		debugShowCheckedModeBanner: false,
		title: '3vents',
		theme: ThemeData(	
			scaffoldBackgroundColor: Color(0xFFFFFFFF),
			primaryColor: Color(0xFFFF4700)
		),
		home: HomePage(),
	);
  }
}
