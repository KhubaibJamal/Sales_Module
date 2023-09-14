import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class DealerText extends StatelessWidget {
  const DealerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        Text(
          "Dealers List",
          style: headingStyle.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
      ],
    );
  }
}
