import 'package:flutter/material.dart';

import 'default_button.dart';
import '../const.dart';
import '../size_config.dart';

class RecoveryPopUp extends StatelessWidget {
  const RecoveryPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Recovery Plan",
            style: TextStyle(
              color: Color(0xFF54595E),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            height: SizeConfig.screenHeight! / 3.5,
            width: SizeConfig.screenWidth! * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              border: Border.all(width: 1.5, color: kGreyColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              maxLines: 3,
              style: headingStyle.copyWith(
                  fontSize: getProportionateScreenWidth(17)),
              decoration: const InputDecoration(
                hintText: "Add Comments",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          // button
          SizedBox(
            width: SizeConfig.screenWidth! / 2,
            child: DefaultButton(
              text: "Yes, confirm",
              textColor: Colors.white,
              backgroundColor: kPrimaryColor,
              press: () {
                Navigator.pop(context);
              },
              borderRadius: 10,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
        ],
      ),
    );
  }
}
