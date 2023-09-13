import 'package:agha_steel_sales_module/screens/auth/auth_screen.dart';
import 'package:agha_steel_sales_module/screens/home/home_screen.dart';
import 'package:agha_steel_sales_module/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  AuthScreen.routeName: (context) => const AuthScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};