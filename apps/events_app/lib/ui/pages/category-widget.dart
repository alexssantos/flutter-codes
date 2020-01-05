import 'package:events_app/models/category.dart';
import 'package:events_app/styleguide.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {

	final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);

	@override
	Widget build(BuildContext context) {		
		return _categoryBoxItem(context, category);
	}
}

Container _categoryBoxItem(BuildContext ctx, Category category){
	var item = new Container(		
		width: 90,
		height: 90,		
		margin: const EdgeInsets.symmetric(horizontal: 8),
		decoration: BoxDecoration(
			border: Border.all(color: Color(0x99FFFFFF), width: 3),
			borderRadius: BorderRadius.all(
				Radius.circular(16)
			),
			color: Colors.transparent,
		),
		
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			
			children: <Widget>[
				Icon(
					category.icon,
					color: Colors.white,
					size: 40
				),

				Text(
					category.name, 
					style: categoryTextStyle
				),
		],),
	);

	return item;
}