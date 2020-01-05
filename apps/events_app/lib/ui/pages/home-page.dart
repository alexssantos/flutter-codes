import 'package:events_app/app_state.dart';
import 'package:events_app/models/category.dart';
import 'package:events_app/styleguide.dart';
import 'package:events_app/ui/pages/home-page-background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category-widget.dart';

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: ChangeNotifierProvider(
				create: (myState) => MyAppState(),
				child: Stack(
					children: <Widget>[
						HomePageBackground(screenHeight: MediaQuery.of(context).size.height),

						SafeArea(
							child: SingleChildScrollView(
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										
										//TOP ITENS 
										Padding(
											padding: const EdgeInsets.only(
												top: 24, right: 24, bottom: 0, left: 24
											),
											
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
										),

										//TITLE TEXT "WHAT'S UP"
										Padding(
											padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
											child: Text("What's Up", style: whiteHeadingTextStyle),
										),

										// CATEGORY ITENS
										Padding(
											padding: const EdgeInsets.symmetric(vertical: 24.0),
											child: Consumer<MyAppState>(
												builder: (context, myState, _) {
													
													return SingleChildScrollView(
														scrollDirection: Axis.horizontal,

														child: Row(
															children: <Widget>[
																for (final category in categoryList)
																	CategoryWidget(category: category)
															],
														),
													);
												}
											)
										)
									],
								),
							),
						)
					],
				),
			),
		);
	}
}