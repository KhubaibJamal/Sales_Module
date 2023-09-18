import 'package:agha_steel_sales_module/screens/support%20ticket/new%20ticket/page_header.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/new%20ticket/ticket_detail.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'custom_radio_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page header
              const PageHeader(),

              // ticket Details container
              SizedBox(height: getProportionateScreenWidth(15)),
              const TicketDetails(),

              // radio buttons
              const CustomRadioButton(),
              SizedBox(height: getProportionateScreenWidth(15)),
            ],
          ),
        ),
      ),
    );
  }
}
