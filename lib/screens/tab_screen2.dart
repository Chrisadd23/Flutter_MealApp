import 'package:flutter/material.dart';
import 'package:flutter_delimeals/screens/categories_screen.dart';
import 'package:flutter_delimeals/screens/favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  final List<Map<String,Object>> _pages = [
    {'page': const CategoriesScreen() as Object,
      'title': 'Categories',
    },
    {
      'page':  const FavoriteScreen() as Object,
      'title': 'Your Favorites'
    }
   
  ];

  int _selectedPageIndex= 0;

  void _selectPage(int index)
  {
      setState(() {
        _selectedPageIndex = index;
      });
  }


  @override
  Widget build(BuildContext context) {
    String titel = (_pages[_selectedPageIndex]['title']).toString();
    return Scaffold(
          appBar: AppBar(
            title: Text(titel),
          ),
          body: _pages[_selectedPageIndex]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Colors.pink[400],
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.amber[200],
            currentIndex: _selectedPageIndex, //Wird benötigt damt das system weiß welche seite Ausgewählt ist für selected color
            //type: // BottomNavigationBarType.shifting, //Anderes nicht mehr sichtbar
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.category),
              label: 'Categories',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.star),
              label: 'Favorites',
              )

            ],
          ),
        );
  }
}
