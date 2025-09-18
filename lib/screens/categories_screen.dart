import 'package:flutter/material.dart';
import 'package:mealsapp/components/category_item.dart';
import 'package:mealsapp/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vamos Cozinhar?',
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20 
          ),
          children: dummyCategories.map((cat) {
            return CategoryItem(category: cat);
          }).toList(),
      ),
    );
  }
}