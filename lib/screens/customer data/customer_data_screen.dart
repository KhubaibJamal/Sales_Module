import 'package:agha_steel_sales_module/screens/customer%20data/component/body.dart';
import 'package:flutter/material.dart';

class CustomerDataScreen extends StatelessWidget {
  static String routeName = "/customer_data";
  const CustomerDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
