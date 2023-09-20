import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Text(
        "Agha Steel Industries Turning\nVision into Reality",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(20),
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
