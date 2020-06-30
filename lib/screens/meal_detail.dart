import 'package:exempleflutterapp/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final meal = ModalRoute.of(context).settings.arguments as Meal;


    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text('TESTE'),
      ),
    );
  }
}
