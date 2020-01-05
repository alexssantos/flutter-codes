import 'package:events_app/models/category.dart';
import 'package:events_app/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class CategoryWidget extends StatelessWidget {

	final Category category;

  	const CategoryWidget({Key key, this.category}) : super(key: key);

	@override
	Widget build(BuildContext context) {		

		final appState = Provider.of<MyAppState>(context);
		final isSelected = appState.selectedCategoryId == category.categoryId;

		return GestureDetector(
			onTap: () => {
				if (!isSelected) {
					appState.updateCategoryid(category.categoryId)
				}
			},

			child: _categoryBoxItem(context, category, isSelected),
		);		  
	}
}

Container _categoryBoxItem(BuildContext ctx, Category category, bool isSelected){
	var boxBoarderColor = isSelected ? Colors.white : Color(0x99FFFFFF);
	var boxBackgroundColor = isSelected ? Colors.white : Colors.transparent;
	var boxIconColor = isSelected ? Theme.of(ctx).primaryColor : Colors.white;
	var boxTextStyle = isSelected ? selectedCategoryTextStyle : categoryTextStyle;

	var item = new Container(		
		width: 90,
		height: 90,		
		margin: const EdgeInsets.symmetric(horizontal: 8),
		decoration: BoxDecoration(
			border: Border.all(color: boxBoarderColor, width: 3),
			borderRadius: BorderRadius.all(
				Radius.circular(16)
			),
			color: boxBackgroundColor,
		),
		
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			
			children: <Widget>[
				Icon(
					category.icon,
					color: boxIconColor,
					size: 40
				),

				Text(
					category.name, 
					style: boxTextStyle
				),
		],),
	);

	return item;
}