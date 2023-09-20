import 'package:flutter/material.dart';

import '../../../size_config.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
      child: Text(
        "Welcome to",
        style: TextStyle(
          letterSpacing: getProportionateScreenWidth(3),
          fontSize: getProportionateScreenWidth(40),
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
