import 'package:flutter/material.dart';
import 'package:flutter_delimeals/screens/categories_screen.dart';
import 'package:flutter_delimeals/screens/favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        //initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favorits',
                )
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            CategoriesScreen(),
            FavoriteScreen(),
          ],),
        ));
  }
}
