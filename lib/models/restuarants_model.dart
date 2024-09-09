import 'package:flutter/material.dart';

class RestaurantsModel {
  String name;
  String iconPath;
  double ratings;
  bool viewIsSelected;
  Color boxColor;

  RestaurantsModel({
    required this.name,
    required this.iconPath,
    required this.ratings,
    required this.viewIsSelected,
    required this.boxColor,

  });
  static List<RestaurantsModel> getRestaurants() {
    List<RestaurantsModel> restaurants

    = [];
    restaurants.add(
        RestaurantsModel(name: 'Dominos',
            iconPath: 'assets/icons/dominos.png',
            ratings: 9.0,
            viewIsSelected: true,
            boxColor: Color(0xff92A3FD)
        )
    );

    restaurants.add(
        RestaurantsModel(name: "Sharma's Kitchen",
            iconPath: 'assets/icons/sharmas.png',
            ratings: 9.0,
            viewIsSelected: true,
            boxColor: Color(0xffC588F2)
        )
    );

    restaurants.add(
        RestaurantsModel(name: 'KFC',
            iconPath: 'assets/icons/kfc.png',
            ratings: 9.0,
            viewIsSelected: true,
            boxColor: Color(0xff92A3FD)
        )
    );

    restaurants.add(
        RestaurantsModel(name: 'WOW-MOMO',
            iconPath: 'assets/icons/wow-momo.png',
            ratings: 9.0,
            viewIsSelected: true,
            boxColor: Color(0xffC588F2)
        )
    );
    return restaurants;
  }
}