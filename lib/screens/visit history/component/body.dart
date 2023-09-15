import 'package:agha_steel_sales_module/screens/visit%20history/component/page_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'history_detail.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page title
              const PageTitle(),

              // visit history container
              const HistoryDetail(),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
