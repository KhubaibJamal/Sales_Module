import 'package:flutter/material.dart';

import '../../../size_config.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenWidth(160),
      child: Container(
        height: SizeConfig.screenHeight! * 0.3,
        width: SizeConfig.screenWidth! * 0.8,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
