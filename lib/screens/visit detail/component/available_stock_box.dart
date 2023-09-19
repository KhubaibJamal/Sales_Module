import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class AvailableStockBox extends StatelessWidget {
  const AvailableStockBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.9,
          height: 50,
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          decoration: const BoxDecoration(
            color: Color(0xFFFDE2D2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text("Available Stock", style: subHeading),
          ),
        ),
        const ColorContainer(bgColor: Colors.white),
        const ColorContainer(bgColor: Color(0xFFEBF0FC)),
        const ColorContainer(bgColor: Color(0xFFEBF0FC)),
        const ColorContainer(bgColor: Color(0xFFF9E5F0)),
        const ColorContainer(bgColor: Color(0xFFFEF8EE)),
        const ColorContainer(bgColor: Colors.white),
      ],
    );
  }
}

class ColorContainer extends StatelessWidget {
  final Color bgColor;
  const ColorContainer({
    super.key,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, -3),
            blurRadius: 5,
            color: Colors.white70,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Agha Steel", style: pageHeading),
          const Spacer(),
          Text("25 ", style: pageHeading),
          Text("MT", style: subHeading.copyWith(color: kPrimaryColor)),
        ],
      ),
    );
  }
}
