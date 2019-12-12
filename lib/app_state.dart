import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int selectedCategoryId = 0;

  updateCategoryId(int selectedCategory) {
    this.selectedCategoryId = selectedCategory;
    notifyListeners();
  }
}
