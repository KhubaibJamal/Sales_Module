import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import 'address_text_field.dart';

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
      content: AddressTextField(
        width: SizeConfig.screenWidth! * 0.3,
        btnText: "Check-in",
      ),
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
