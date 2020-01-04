import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
	Category({this.categoryId, this.name, this.icon});
	
	final int categoryId;
	final String name;
	final IconData icon;
}

final allCategory = Category(categoryId: 0, name: "All", icon: Icons.search);
final musicCategory = Category(categoryId: 1, name: "Music", icon: Icons.music_note);
final meetUpCategory = Category(categoryId: 2, name: "Meetup", icon: Icons.location_on);
final golfCategory = Category(categoryId: 3, name: "Golf", icon: Icons.golf_course);
final birthdayCategory = Category(categoryId: 4, name: "Birthday", icon: Icons.search);

final categoryList = [
	allCategory,
	musicCategory,
	meetUpCategory,
	golfCategory,
	birthdayCategory
];