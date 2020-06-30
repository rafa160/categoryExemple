import 'dart:ui';

import 'package:exempleflutterapp/routes/app_routes.dart';
import 'package:exempleflutterapp/screens/categories.dart';
import 'package:exempleflutterapp/screens/categories_meals.dart';
import 'package:exempleflutterapp/screens/meal_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screens App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Releway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        )
      ),
      routes: {
        AppRoutes.HOME: (context) => Categories(),
        AppRoutes.CATEGORY_MEALS: (context) => CategoriesMeals(),
        AppRoutes.MEAL_DETAILS: (context) => MealDetail(),
      },
    );
  }
}
