import 'package:agha_steel_sales_module/route.dart';
import 'package:agha_steel_sales_module/screens/welcome/welcome_screen.dart';
import 'package:agha_steel_sales_module/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agha Steel Sales Module',
      theme: theme(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
