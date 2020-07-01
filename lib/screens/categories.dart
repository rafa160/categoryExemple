import 'package:flutter/material.dart';
import 'package:exempleflutterapp/widgets/category_widget.dart';
import 'package:exempleflutterapp/data/data.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((e) {
        return CategoryWidget(e);
      }).toList(),
    );
  }
}
