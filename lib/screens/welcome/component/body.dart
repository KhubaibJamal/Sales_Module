import 'package:agha_steel_sales_module/screens/auth/auth_screen.dart';
import 'package:agha_steel_sales_module/screens/welcome/component/welcome_text.dart';
import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../size_config.dart';
import 'background_image.dart';
import 'body_text.dart';
import 'logo_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      fit: StackFit.expand,
      children: [
        const BackgroundImage(),
        const WelcomeText(),
        const WelcomeContainer(),
        const BodyText(),
        Positioned(
          bottom: 40,
          child: Padding(
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
        ),
      ],
    );
  }
}
