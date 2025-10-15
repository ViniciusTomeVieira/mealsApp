import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories_meals_screen.dart';
import 'package:mealsapp/screens/categories_screen.dart';
import 'package:mealsapp/screens/meal_detail_screen.dart';
import 'package:mealsapp/screens/settings_screen.dart';
import 'package:mealsapp/screens/tabs_screen.dart';
import 'package:mealsapp/utils/app_routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: Colors.amberAccent,
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        )
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS : (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL : (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS : (ctx) => SettingsScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
    );
  }
}