import 'package:flutter/material.dart';

import '../../../../component/default_button.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';
import '../../../dealer location/dealer_location_screen.dart';
import '../address_text_field.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(12),
        vertical: getProportionateScreenWidth(12),
      ),
      width: SizeConfig.screenWidth!,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: DefaultTextField(hintText: "Enter Phone Number"),
              ),
              SizedBox(
                width: 60,
                height: 45,
                child: DefaultButton(
                  text: "Add",
                  textColor: Colors.white,
                  press: () {
                    Navigator.pushNamed(
                        context, DealerLocationScreen.routeName);
                  },
                  borderRadius: 10,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const Divider(
            color: kGreyColor,
            thickness: 1.5,
            indent: 30,
            endIndent: 30,
          ),
          AddressTextField(
            width: SizeConfig.screenWidth! * 0.4,
            btnText: "Submit",
          ),
        ],
      ),
    );
  }
}
