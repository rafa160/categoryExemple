import 'package:exempleflutterapp/models/meal.dart';
import 'package:exempleflutterapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealWidget extends StatelessWidget {
  final Meal meal;

  const MealWidget(this.meal);

  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.MEAL_DETAILS, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.network(
                      meal.img,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.schedule,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('${meal.duration} min.')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.work,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(meal.complexityText)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(meal.costText)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
