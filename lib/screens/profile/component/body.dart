import 'package:agha_steel_sales_module/component/icon_button.dart';
import 'package:agha_steel_sales_module/component/icon_container.dart';
import 'package:agha_steel_sales_module/screens/profile/component/profile_image.dart';
import 'package:agha_steel_sales_module/screens/profile/component/profile_menu.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/upper logo.png')),
              AppBar(leading: const IconContainer()),
              const ProfileImage(),
              Text(
                'Kamal',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.w500,
                ),
              ),

              // profile menu items
              const ProfileMenu(),

              // past visit button
              DefaultButtonWithIcon(
                text: "Past Visits",
                icon: 'assets/icons/past visit icon.svg',
                press: () {},
              ),

              SizedBox(height: getProportionateScreenWidth(10)),
            ],
          ),
        ),
      ),
    );
  }
}
