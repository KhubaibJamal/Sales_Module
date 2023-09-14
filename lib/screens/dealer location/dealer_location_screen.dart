import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/dealer%20location/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';

class DealerLocationScreen extends StatelessWidget {
  static String routeName = "/dealers_location";
  const DealerLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.dealerLocation),
    );
  }
}
