import 'package:agha_steel_sales_module/component/default_button.dart';
import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/dealer%20location/dealer_location_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class AddressTextField extends StatelessWidget {
  final double width;
  final String btnText;
  const AddressTextField({
    super.key,
    required this.width,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // address text
        SizedBox(height: getProportionateScreenWidth(10)),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
          child: Text("Address", style: subHeading),
        ),

        // text fields
        const DefaultTextField(hintText: "Address 1"),
        const DefaultTextField(hintText: "Address 2"),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: width,
              child: const DefaultTextField(hintText: "Zip"),
            ),
            SizedBox(
              width: width,
              child: const DefaultTextField(hintText: "City"),
            ),
          ],
        ),

        // current location text
        SizedBox(height: getProportionateScreenWidth(10)),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
          child: Text(
            "use current location",
            style: greyTextStyle.copyWith(color: kPrimaryColor),
          ),
        ),

        // button
        SizedBox(height: getProportionateScreenWidth(10)),
        Center(
          child: SizedBox(
            height: 50,
            width: SizeConfig.screenWidth! * 0.4,
            child: DefaultButton(
              text: btnText,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, DealerLocationScreen.routeName);
              },
              borderRadius: 10,
            ),
          ),
        ),
      ],
    );
  }
}

class DefaultTextField extends StatelessWidget {
  final String hintText;
  const DefaultTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(getProportionateScreenWidth(8)),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
