import 'package:agha_steel_sales_module/screens/remaining%20order/component/body.dart';
import 'package:flutter/material.dart';

class RemainingOrderScreen extends StatelessWidget {
  static String routeName = "/remaining_order";
  const RemainingOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
