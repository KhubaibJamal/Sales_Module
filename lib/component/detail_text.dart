import 'package:flutter/material.dart';

import '../const.dart';
import '../size_config.dart';

class DetailText extends StatelessWidget {
  final String title, subTitle;
  final Color? textColor;

  const DetailText({
    Key? key,
    required this.title,
    required this.subTitle,
    this.textColor = const Color(0xFF989898),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: subHeading.copyWith(
            color: textColor,
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        Text(subTitle, style: subHeading),
      ],
    );
  }
}
