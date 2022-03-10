import 'package:flutter/material.dart';
import 'package:flutter_delimeals/screens/Meal_detail_creen.dart';
import 'package:flutter_delimeals/screens/categorie_meals_screen.dart';
import 'package:flutter_delimeals/screens/categories_screen.dart';
import 'package:flutter_delimeals/screens/filters_screen.dart';
import 'package:flutter_delimeals/screens/tab_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1:  const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2:  const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              subtitle1:  const TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      //home: const CategoriesScreen(),
      //Ermöglicht es direkt zu den Pfad
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategorieMealsScreen.routeName : (ctx) => CategorieMealsScreen(),
        MealDetailScreen.routeName: (ctx) =>  MealDetailScreen(),
        FilterScreen.routeName: (ctx) => const FilterScreen(),
      },
      onGenerateRoute: (settings){
          print(settings.arguments);
      },
    );
  }
}
