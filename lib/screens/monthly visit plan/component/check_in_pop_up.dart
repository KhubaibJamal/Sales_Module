import 'dart:ui';

import 'package:agha_steel_sales_module/component/default_button.dart';
import 'package:agha_steel_sales_module/component/text_box.dart';
import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/dealer%20location/dealer_location_screen.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

class CheckInPopUp extends StatelessWidget {
  const CheckInPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: const PopUpTitle(),
      content: const PopUpContent(),
    );
  }
}

class PopUpContent extends StatelessWidget {
  const PopUpContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Address", style: subHeading),
        SizedBox(height: getProportionateScreenWidth(10)),
        const TextBox(
          color: Color(0xFFF5F5F5),
          borderColor: Color(0xFFF5F5F5),
          text: "Address Line 1",
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        const TextBox(
          color: Color(0xFFF5F5F5),
          borderColor: Color(0xFFF5F5F5),
          text: "Address Line 2",
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! * 0.3,
              child: const TextBox(
                color: Color(0xFFF5F5F5),
                borderColor: Color(0xFFF5F5F5),
                text: "Zip",
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.3,
              child: const TextBox(
                color: Color(0xFFF5F5F5),
                borderColor: Color(0xFFF5F5F5),
                text: "City",
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Text(
          "use current location",
          style: greyTextStyle.copyWith(color: kPrimaryColor),
        ),

        // button
        SizedBox(height: getProportionateScreenWidth(10)),
        Center(
          child: SizedBox(
            width: SizeConfig.screenWidth! * 0.3,
            height: 40,
            child: DefaultButton(
              text: "Check-in",
              textColor: Colors.white,
              press: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, DealerLocationScreen.routeName);
              },
              borderRadius: 10,
            ),
          ),
        )
      ],
    );
  }
}

class PopUpTitle extends StatelessWidget {
  const PopUpTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Recovery Plan",
          style: subHeading.copyWith(color: kPrimaryColor),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}
