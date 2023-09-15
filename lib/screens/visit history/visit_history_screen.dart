import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/visit%20history/component/body.dart';
import 'package:flutter/material.dart';

class VisitHistoryScreen extends StatelessWidget {
  static String routeName = "/visit_history";
  const VisitHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Body(),
    );
  }
}
