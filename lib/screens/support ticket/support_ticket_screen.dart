import 'package:agha_steel_sales_module/screens/support%20ticket/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../const.dart';
import '../../enum.dart';

class SupportTicketScreen extends StatelessWidget {
  static String routeName = "/support";
  const SupportTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.support),
    );
  }
}
