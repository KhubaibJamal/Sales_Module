import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class SalesContainer extends StatelessWidget {
  const SalesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // icon
            SvgPicture.asset('assets/icons/sales.svg'),
            const SizedBox(width: 10),
            // text
            Text(
              "Sales",
              style: TextStyle(
                color: kGreenColor,
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(8)),
          width: SizeConfig.screenWidth! / 2.5,
          decoration: const BoxDecoration(
            color: Color(0xFFD4F4E2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              "Target 500 MTN",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          width: SizeConfig.screenWidth! / 2.5,
          height: 210,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                color: Colors.grey,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sales Till Today', style: headingStyle),
              Text(
                '300 MTN',
                style: subHeading.copyWith(color: kGreenColor),
              ),
              SizedBox(height: getProportionateScreenWidth(12)),
              Text('Remaining Sales', style: headingStyle),
              Text('200 MTN', style: subHeading.copyWith(color: kRedColor)),
              SizedBox(height: getProportionateScreenWidth(12)),
              Text('Balance', style: headingStyle),
              Text('100 MTN', style: subHeading.copyWith(color: kYellowColor)),
              SizedBox(height: getProportionateScreenWidth(12)),
            ],
          ),
        ),
      ],
    );
  }
}
