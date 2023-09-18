import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/new%20ticket/body.dart';
import 'package:flutter/material.dart';

class NewTicketScreen extends StatelessWidget {
  static String routeName = '/new_ticket';
  const NewTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Body(),
    );
  }
}
