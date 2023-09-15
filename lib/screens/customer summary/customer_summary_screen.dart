import 'package:agha_steel_sales_module/screens/customer%20summary/component/body.dart';
import 'package:flutter/material.dart';

class CustomerSummaryScreen extends StatelessWidget {
  static String routeName = "/Customer_summary";
  const CustomerSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
