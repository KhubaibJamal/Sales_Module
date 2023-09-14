import 'package:agha_steel_sales_module/component/custom_nav_bar.dart';
import 'package:agha_steel_sales_module/screens/dealer/component/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class DealerScreen extends StatelessWidget {
  static String routeName = "/dealer";
  const DealerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.dealerList),
    );
  }
}
