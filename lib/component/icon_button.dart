import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../size_config.dart';

class DefaultButtonWithIcon extends StatelessWidget {
  final String text, icon;
  final VoidCallback press;
  const DefaultButtonWithIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Ink(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        width: SizeConfig.screenWidth! * 0.9,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
