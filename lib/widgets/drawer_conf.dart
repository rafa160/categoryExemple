import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerConfiguration extends StatelessWidget {

  _createItem(IconData iconData, String label) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            color: Theme.of(context).accentColor,
            child: Text('My App', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30, color: Theme.of(context).primaryColor),),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(
              Icons.restaurant,
              'Meals'
          ),
          _createItem(
              Icons.settings,
              'Configuration'
          ),
        ],
      ),
    );
  }
}
