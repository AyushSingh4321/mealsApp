import 'package:flutter/material.dart';
import './favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.category,color: Colors.white,
              ),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(
                Icons.star,color: Colors.white,
              ),
              text: 'Favourites',
            ),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),FavouritesScreen(),
        ]),
      ),
    );
  }
}