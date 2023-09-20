import 'package:agha_steel_sales_module/component/default_button.dart';
import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/dealer%20location/component/page_title.dart';
import 'package:agha_steel_sales_module/screens/support%20ticket/support_ticket_screen.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import 'dealer_drop_down.dart';
import 'map_loation.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            // app logo
            Center(child: Image.asset('assets/images/upper logo.png')),

            // page text
            const PageTitle(),

            // dealer name dropdown number and location
            SizedBox(height: getProportionateScreenWidth(20)),
            const DealerDropDown(),

            // map location
            SizedBox(height: getProportionateScreenWidth(20)),
            const MapLocation(),

            // button
            const Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.85,
              height: 50,
              child: DefaultButton(
                text: "Tag",
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
                borderRadius: 10,
                press: () {
                  Navigator.pushNamed(context, SupportTicketScreen.routeName);
                },
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}
