import 'package:flutter/material.dart';
import 'package:local_events_app/app_state.dart';
import 'package:local_events_app/models/category.dart';
import 'package:local_events_app/styleguide.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategoryId(category.categoryId); //Parei no 30:00
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.white : Color(0x99FFFFFF),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
              size: 32.0,
            ),
            SizedBox(height: 10.0),
            Text(category.name,
                style:
                    isSelected ? selectedCategoryTextStyle : categoryTextStyle),
          ],
        ),
      ),
    );
  }
}
