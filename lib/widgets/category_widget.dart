import 'package:exempleflutterapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:exempleflutterapp/models/category.dart';
import 'package:flutter/widgets.dart';


class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORY_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(20),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color,
            ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
      ),
    );
  }
}
