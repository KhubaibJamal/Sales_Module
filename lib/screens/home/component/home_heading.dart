import 'package:flutter/material.dart';

import '../../../component/month_text_container.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class HomeHeading extends StatelessWidget {
  final String heading;
  const HomeHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          heading,
          style: headingStyle.copyWith(
              color: kBlueColor, fontSize: getProportionateScreenWidth(18)),
        ),
        const MonthTextContainer(),
      ],
    );
  }
}
