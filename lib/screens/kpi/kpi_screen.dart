import 'package:agha_steel_sales_module/screens/kpi/component/body.dart';
import 'package:flutter/material.dart';

class KpiScreen extends StatelessWidget {
  static String routeName = "/kpi";
  const KpiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
