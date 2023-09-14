import 'package:agha_steel_sales_module/screens/auth/auth_screen.dart';
import 'package:agha_steel_sales_module/screens/dealer/dealer_screen.dart';
import 'package:agha_steel_sales_module/screens/home/home_screen.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/support_ticket_screen.dart';
import 'package:agha_steel_sales_module/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  AuthScreen.routeName: (context) => const AuthScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DealerScreen.routeName: (context) => const DealerScreen(),
  SupportTicketScreen.routeName: (context) => const SupportTicketScreen(),
};
