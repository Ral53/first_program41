import 'package:first_program/theme/theme_data.dart';
import 'package:first_program/view/dashboard.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      theme: getApplicationTheme(),
    );
  }
}
