import 'package:agha_steel_sales_module/screens/visit%20detail/component/body.dart';
import 'package:flutter/material.dart';

class VisitDetailScreen extends StatelessWidget {
  static String routeName = "/visit_detail";
  const VisitDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
