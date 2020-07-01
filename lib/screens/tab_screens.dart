import 'package:exempleflutterapp/screens/categories.dart';
import 'package:exempleflutterapp/screens/favorite.dart';
import 'package:exempleflutterapp/widgets/drawer_conf.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreen = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Food Categories', 'screen': Categories()},
    {'title': 'Favorites', 'screen': FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreen]['title']),
      ),
      drawer: Drawer(
        child: DrawerConfiguration(),
      ),
      body: _screens[_selectedScreen]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreen,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.fastfood),
              title: Text('Category')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              title: Text('Favorites')),
        ],
      ),
    );
  }
}
