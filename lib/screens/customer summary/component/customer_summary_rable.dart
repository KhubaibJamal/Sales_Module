import 'package:agha_steel_sales_module/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class CustomerSummaryTable extends StatelessWidget {
  const CustomerSummaryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
      width: SizeConfig.screenWidth! * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 20,
            color: Colors.white10,
          ),
        ],
      ),
      child: Table(
        children: [
          // table heading
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Dealers", style: greyTextStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Target", style: greyTextStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                child: Text("Achieve", style: greyTextStyle),
              ),
              Text("Performance", style: greyTextStyle),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("11M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance up.svg",
                  text: "%10",
                  textColor: kGreenColor,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("9.5M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance down.svg",
                  text: "%5",
                  textColor: kRedColor,
                ),
              ),
            ],
          ),
          //
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance constant.svg",
                  text: "%0",
                  textColor: kYellowColor,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("11M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance up.svg",
                  text: "%10",
                  textColor: kGreenColor,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("9.5M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance down.svg",
                  text: "%5",
                  textColor: kRedColor,
                ),
              ),
            ],
          ),
          //
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("Kamal", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: Text("10M", style: headingStyle),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                child: const PerformanceText(
                  icon: "assets/icons/performance constant.svg",
                  text: "%0",
                  textColor: kYellowColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PerformanceText extends StatelessWidget {
  final String icon, text;
  final Color textColor;
  const PerformanceText({
    super.key,
    required this.icon,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        Text(
          text,
          style: headingStyle.copyWith(color: textColor),
        ),
      ],
    );
  }
}
