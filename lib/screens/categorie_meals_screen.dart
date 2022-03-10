import 'package:flutter/material.dart';
import 'package:flutter_delimeals/dummy_data.dart';
import 'package:flutter_delimeals/widget/meal_item.dart';

class CategorieMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // const CategorieMealsScreen(this.categoryId,this.categoryTitle);

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['titel'];
    final categoryId = routeArgs['id'];
    
    final categorymeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categorymeals[index].id,
            title: categorymeals[index].title,
            imageUrl: categorymeals[index].imageUrl,
            duration: categorymeals[index].duration,
            complexity: categorymeals[index].complexity,
            affordability: categorymeals[index].affordability,
          );
        },
        itemCount: categorymeals.length,
      ),
    );
  }
}
