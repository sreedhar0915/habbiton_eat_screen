import 'package:flutter/material.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';

class EatScreenProvider with ChangeNotifier {
  List<Map<String, dynamic>> meals = [
    {
      "image": "assets/images/breakfast.png",
      "heading": "Breakfast",
      "subheading": "Bread,Peanut butter,Apple",
      "color": AppColors.breakfast,
    },
    {
      "image": "assets/images/lunch.png",
      "heading": "Lunch",
      "subheading": "Salmon,Mixed veggies,Avocado",
      "color": AppColors.lunch,
    },
    {
      "image": "assets/images/snack.png",
      "heading": "Snack",
      "subheading": "Recomended:800 kcal",
      "color": AppColors.snack,
    },
  ];
}
