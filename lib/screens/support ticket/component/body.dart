import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/component/ticket_box.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/component/ticket_detail.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import '../../../component/icon_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12.0)),
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page text
              Text("Support Ticket", style: pageHeading),

              // new ticket button
              SizedBox(height: getProportionateScreenWidth(10)),
              DefaultButtonWithIcon(
                text: "New Ticket",
                icon: 'assets/icons/new ticket icon.svg',
                press: () {},
              ),

              // ticket grid
              SizedBox(height: getProportionateScreenWidth(20)),
              const TicketGrid(),

              // ticket details
              SizedBox(height: getProportionateScreenWidth(20)),
              const TicketStatusList(),
              SizedBox(height: getProportionateScreenWidth(10)),
            ],
          ),
        ),
      ),
    );
  }
}
