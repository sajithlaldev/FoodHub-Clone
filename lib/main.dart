import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/main/main_screen.dart';
import 'package:food_hub_clone/utils/colors.dart';

import 'utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodHub Clone',
      theme: Themes.BasicTheme,
      home: const MainScreen(),
    );
  }
}
