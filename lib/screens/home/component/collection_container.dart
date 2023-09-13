import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class CollectionContainer extends StatelessWidget {
  const CollectionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // icon
            SvgPicture.asset('assets/icons/collection.svg'),
            const SizedBox(width: 10),
            // text
            Text(
              "Collection",
              style: TextStyle(
                color: kPrimaryColor,
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
            color: Color(0xFFFDE2D2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              "Target 500M PKR",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Collection Till Today',
                  style: headingStyle.copyWith(
                      fontSize: getProportionateScreenWidth(12))),
              Text('2000,000 PKR',
                  style: subHeading.copyWith(color: kPrimaryColor)),
              SizedBox(height: getProportionateScreenWidth(10)),
              const Row(
                children: [
                  Text("Advance", style: TextStyle(color: kGreyColor)),
                  SizedBox(width: 10),
                  Text("1000,000", style: TextStyle(color: kGreyColor)),
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Text("Receivable", style: TextStyle(color: kGreyColor)),
                  SizedBox(width: 10),
                  Text("1000,000", style: TextStyle(color: kGreyColor)),
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text('Remaining Collection',
                  style: headingStyle.copyWith(
                      fontSize: getProportionateScreenWidth(12))),
              Text('3000,000 PKR',
                  style: subHeading.copyWith(color: kRedColor)),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text('Balance', style: headingStyle),
              Text('3000,000 PKR',
                  style: subHeading.copyWith(color: kYellowColor)),
              SizedBox(height: getProportionateScreenWidth(12)),
            ],
          ),
        ),
      ],
    );
  }
}
