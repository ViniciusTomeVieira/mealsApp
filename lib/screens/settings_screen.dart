import 'package:flutter/material.dart';
import 'package:mealsapp/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracoes'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Configuracoes'),
      ),
    );
  }
}