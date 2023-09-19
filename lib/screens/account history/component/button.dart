import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../size_config.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth! / 2,
          child: DefaultButton(
            text: "Account Statement",
            textColor: Colors.white,
            backgroundColor: Color(0xFFEA4335),
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SizedBox(
          width: SizeConfig.screenWidth! / 2,
          child: DefaultButton(
            text: "Ledger Reconciliation",
            textColor: Colors.white,
            backgroundColor: Colors.black,
            press: () {},
          ),
        ),
      ],
    );
  }
}
