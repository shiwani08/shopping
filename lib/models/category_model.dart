import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories
 = [];
    categories.add(
      CategoryModel(name: 'Salad',
          iconPath: 'assets/icons/salad.png',
          boxColor: Color(0xff92A3FD)
      )
    );

    categories.add(
        CategoryModel(name: 'Cake',
            iconPath: 'assets/icons/cake.png',
            boxColor: Color(0xffC588F2)
        )
    );

    categories.add(
        CategoryModel(name: 'Pizza',
            iconPath: 'assets/icons/pizza.png',
            boxColor: Color(0xff92A3FD)
        )
    );

    categories.add(
        CategoryModel(name: 'Pasta',
            iconPath: 'assets/icons/pasta.png',
            boxColor: Color(0xffC588F2)
        )
    );
    return categories;
  }
}