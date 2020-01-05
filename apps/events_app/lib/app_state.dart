import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier{

	int selectedCategoryId = 0;

	void updateCategoryid(int selectedCategoryId)
	{
		this.selectedCategoryId = selectedCategoryId;		
		notifyListeners();
	}
  
}