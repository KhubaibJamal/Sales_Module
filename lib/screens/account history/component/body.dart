import 'package:agha_steel_sales_module/screens/account%20history/component/page_header.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'button.dart';
import 'date_container.dart';
import 'image_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page header
              const PageHeader(),

              // data time box
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              const DateContainer(),

              // Image box
              SizedBox(height: getProportionateScreenWidth(20)),
              const ImageContainer(),

              // account stmt and lodger button
              SizedBox(height: getProportionateScreenWidth(20)),
              const Buttons(),

              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
