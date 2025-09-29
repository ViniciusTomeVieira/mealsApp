import 'package:flutter/material.dart';
import 'package:mealsapp/components/meal_item.dart';
import 'package:mealsapp/data/dummy_data.dart';
import 'package:mealsapp/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    },).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        }
        ),
    );
  }
}
