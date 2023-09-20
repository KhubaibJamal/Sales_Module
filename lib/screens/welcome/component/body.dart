import 'package:agha_steel_sales_module/screens/auth/auth_screen.dart';
import 'package:agha_steel_sales_module/screens/welcome/component/welcome_text.dart';
import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../size_config.dart';
import 'body_text.dart';
import 'logo_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // clipBehavior: Clip.antiAlias,
      // fit: StackFit.expand,
      children: [
        // const BackgroundImage(),
        const WelcomeText(),
        SizedBox(height: getProportionateScreenWidth(15)),
        const WelcomeContainer(),
        SizedBox(height: getProportionateScreenWidth(18)),
        const BodyText(),
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          child: SizedBox(
            width: SizeConfig.screenWidth! * 0.95,
            child: DefaultButton(
              text: "Login",
              textColor: Colors.black,
              press: () {
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
      ],
    );
  }
}
