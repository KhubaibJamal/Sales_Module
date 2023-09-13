import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class RemainingOrder extends StatelessWidget {
  const RemainingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(30),
          vertical: getProportionateScreenWidth(8)),
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 15,
              color: Colors.grey,
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset('assets/icons/remaining order icon.svg'),
            title: Text("Remaining Orders", style: headingStyle),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
