import 'package:flutter/material.dart';

import '../const.dart';
import '../size_config.dart';

class TextBox extends StatelessWidget {
  final Color color, borderColor;
  final String text;
  const TextBox({
    super.key,
    required this.text,
    required this.color,
    this.borderColor = kGreyColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      width: SizeConfig.screenWidth! * 0.8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Text(text, style: greyTextStyle),
    );
  }
}
