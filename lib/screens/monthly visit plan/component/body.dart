import 'package:agha_steel_sales_module/screens/monthly%20visit%20plan/component/send_location_icon.dart';
import 'package:flutter/material.dart';

import 'map_search_bar.dart';
import 'monthly_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // app logo
          Center(child: Image.asset('assets/images/upper logo.png')),

          // page app bar
          const MonthlyHeader(),

          // send location icon
          const SendLocationIcon(),

          // search map text field
          const Spacer(),
          const MapSearchBar(),
        ],
      ),
    );
  }
}
