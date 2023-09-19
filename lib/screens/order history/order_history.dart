import 'package:agha_steel_sales_module/screens/order%20history/component/body.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  static String routeName = "order_history";
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
