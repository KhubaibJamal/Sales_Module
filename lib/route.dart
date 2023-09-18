import 'package:agha_steel_sales_module/screens/auth/auth_screen.dart';
import 'package:agha_steel_sales_module/screens/customer%20summary/customer_summary_screen.dart';
import 'package:agha_steel_sales_module/screens/dealer%20location/dealer_location_screen.dart';
import 'package:agha_steel_sales_module/screens/dealer/dealer_screen.dart';
import 'package:agha_steel_sales_module/screens/home/home_screen.dart';
import 'package:agha_steel_sales_module/screens/kpi/kpi_screen.dart';
import 'package:agha_steel_sales_module/screens/monthly%20visit%20plan/monthly_visit_plan_screen.dart';
import 'package:agha_steel_sales_module/screens/profile/profile_screen.dart';
import 'package:agha_steel_sales_module/screens/remaining%20order/remaining_order_screen.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/support_ticket_screen.dart';
import 'package:agha_steel_sales_module/screens/visit%20history/visit_history_screen.dart';
import 'package:agha_steel_sales_module/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  AuthScreen.routeName: (context) => const AuthScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DealerScreen.routeName: (context) => const DealerScreen(),
  SupportTicketScreen.routeName: (context) => const SupportTicketScreen(),
  DealerLocationScreen.routeName: (context) => const DealerLocationScreen(),
  VisitHistoryScreen.routeName: (context) => const VisitHistoryScreen(),
  MonthlyVisitScreen.routeName: (context) => const MonthlyVisitScreen(),
  RemainingOrderScreen.routeName: (context) => const RemainingOrderScreen(),
  CustomerSummaryScreen.routeName: (context) => const CustomerSummaryScreen(),
  KpiScreen.routeName: (context) => const KpiScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
