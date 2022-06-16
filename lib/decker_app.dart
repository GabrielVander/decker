import 'package:decker/core/presentation/pages/main_page.dart';
import 'package:decker/core/presentation/theme/themes.dart';
import 'package:flutter/material.dart';

class DeckerApp extends StatelessWidget {
  const DeckerApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decker',
      theme: lightTheme,
      home: const MainPage(),
    );
  }
}
