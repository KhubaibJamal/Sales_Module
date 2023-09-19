import 'package:flutter/material.dart';

import '../const.dart';
import '../size_config.dart';

class FeedbackBox extends StatelessWidget {
  final String text;
  const FeedbackBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      height: SizeConfig.screenHeight! / 3.5,
      width: SizeConfig.screenWidth! * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        // color: Colors.red,
        border: Border.all(width: 1, color: kGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        maxLines: 3,
        style: subHeading.copyWith(fontSize: getProportionateScreenWidth(17)),
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
