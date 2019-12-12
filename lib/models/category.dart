import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCateogory = Category(
  categoryId: 0,
  name: "Geral",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: "Música",
  icon: Icons.music_note,
);

final cookCategory = Category(
  categoryId: 2,
  name: "Cozinha",
  icon: Icons.fastfood,
);

final meetUpCategory = Category(
  categoryId: 5,
  name: "Encontro",
  icon: Icons.location_on,
);

final sportsCategory = Category(
  categoryId: 4,
  name: "Esporte",
  icon: Icons.directions_run,
);

final voluntaryCategory = Category(
  categoryId: 3,
  name: "Voluntário",
  icon: Icons.group_work,
);

final categories = [
  allCateogory,
  musicCategory,
  cookCategory,
  voluntaryCategory,
  sportsCategory,
  meetUpCategory,
];
