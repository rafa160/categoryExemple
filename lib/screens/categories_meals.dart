import 'package:exempleflutterapp/data/data.dart';
import 'package:exempleflutterapp/models/category.dart';
import 'package:exempleflutterapp/widgets/meal_widget.dart';
import 'package:flutter/material.dart';

class CategoriesMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('${category.title}'),
      ),
      body:  ListView.builder(
          itemCount: categoryMeals.length,
            itemBuilder: (context, index){
              return MealWidget(
                categoryMeals[index]
              );
            }
        )
    );
  }
}
