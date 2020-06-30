import 'package:exempleflutterapp/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  _createSectionContainer(Widget child) {
    return Container(
        width: 300,
        height: 250,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.img,
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, 'Ingredients'),
            _createSectionContainer(
              ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(meal.ingredients[index])),
                      color: Theme.of(context).accentColor,
                    );
                  }
              ),
            ),
            _createSectionTitle(context,'Steps'),
            _createSectionContainer(
              ListView.builder(
                itemCount: meal.steps.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('${index + 1}'),
                          ),
                          title: Text(
                            meal.steps[index],
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
