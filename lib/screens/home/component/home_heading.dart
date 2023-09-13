import 'package:flutter/material.dart';

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
        Container(
          padding: const EdgeInsets.all(5),
          color: const Color(0xFFF0F0F0),
          child: Row(
            children: [
              Text(
                "April",
                style: headingStyle.copyWith(
                  color: kBlueColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Icon(Icons.arrow_drop_down_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
