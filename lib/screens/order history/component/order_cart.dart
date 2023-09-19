import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class OrderCard extends StatelessWidget {
  final String orderStatus, orderNumber, orderStatusIcon;
  final VoidCallback trackButton, detailButton;
  const OrderCard({
    super.key,
    required this.orderStatus,
    required this.orderNumber,
    required this.orderStatusIcon,
    required this.trackButton,
    required this.detailButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(18, 18),
              blurRadius: 36,
              color: const Color(0xFFD3D1D840).withOpacity(0.09),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Order Status",
                          style: subHeading,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          orderStatusIcon,
                        ),
                      ],
                    ),
                    Text(
                      orderStatus,
                      style: greyTextStyle,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      orderNumber,
                      style: subHeading.copyWith(color: kPrimaryColor),
                    ),
                    Text(
                      "Order Number",
                      style: greyTextStyle,
                    ),
                  ],
                ),
              ],
            ),

            // order date and quantity
            SizedBox(height: getProportionateScreenWidth(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Date",
                  style: greyTextStyle,
                ),
                Text(
                  "Order Quantity",
                  style: greyTextStyle,
                ),
              ],
            ),

            // quantity number
            SizedBox(height: getProportionateScreenWidth(10)),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "3",
                style: subHeading,
              ),
            ),

            //Date text
            Row(
              children: [
                Text(
                  "25",
                  style: subHeading.copyWith(
                    fontSize: getProportionateScreenWidth(30),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "May",
                  style: subHeading,
                ),
              ],
            ),

            // Track and Details button
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth! / 2.5,
                  child: DefaultButton(
                    text: "Track",
                    textColor: kTextColor,
                    backgroundColor: const Color(0xFFFFFFFF),
                    press: trackButton,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth! / 2.5,
                  child: DefaultButton(
                    text: "Details",
                    textColor: Colors.white,
                    press: detailButton,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
