import 'package:agha_steel_sales_module/screens/account%20history/component/body.dart';
import 'package:flutter/material.dart';

class AccountHistory extends StatelessWidget {
  static String routeName = "/account_history";
  const AccountHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
