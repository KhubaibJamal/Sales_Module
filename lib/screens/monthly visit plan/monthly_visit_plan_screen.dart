import 'package:agha_steel_sales_module/screens/monthly%20visit%20plan/component/body.dart';
import 'package:flutter/material.dart';

import 'component/background_image.dart';

class MonthlyVisitScreen extends StatelessWidget {
  static String routeName = "/monthly_visit_plan";
  const MonthlyVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.expand,
      children: [
        // map bg image
        BackGroundImage(),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Body(),
        ),
      ],
    );
  }
}
