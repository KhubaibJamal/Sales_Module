import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF37020);
const kSecondaryColor = Color(0xFFF2C7B6);
const kTextColor = Colors.black;
const kSecondaryTextColor = Color(0xFF9796A1);
const kGreenColor = Color(0xFF08D110);
const kRedColor = Color(0xFFD70101);
const kGreyColor = Color(0xFFA29C9C);
const kYellowColor = Color(0xFFFABF35);
const kBlueColor = Color(0xFF09244B);
const kScaffoldBgColor = Color(0xFFE9E9E9);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(15),
  fontWeight: FontWeight.w600,
  color: kTextColor,
);

final subHeading = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.w600,
);

final pageHeading = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

final greyTextStyle = TextStyle(
  color: const Color(0xFF868782),
  fontSize: getProportionateScreenWidth(18),
);


// final otpInputDecoration = InputDecoration(
//   contentPadding: const EdgeInsets.symmetric(
//     vertical: 15,
//   ),
//   border: outlineInputBorder(),
//   enabledBorder: outlineInputBorder(),
//   focusedBorder: outlineInputBorder(),
// );

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(15),
//     borderSide: const BorderSide(
//       color: kGreyColor,
//       width: 1.5,
//     ),
//   );
// }

// final scheduledOrderTitleText = TextStyle(
//   color: kTextColor,
//   fontSize: getProportionateScreenWidth(18),
//   fontWeight: FontWeight.w700,
// );

// final scheduledOrderSubTitleText = TextStyle(
//   color: kSecondaryTextColor,
//   fontSize: getProportionateScreenWidth(14),
//   fontWeight: FontWeight.w400,
// );

// final tableHeadingStyle = TextStyle(
//   fontSize: getProportionateScreenWidth(16),
//   fontWeight: FontWeight.bold,
//   color: kPrimaryColor,
// );

// final tableColumnStyle = TextStyle(
//   color: kTextColor,
//   fontSize: getProportionateScreenWidth(16),
//   fontWeight: FontWeight.w500,
// );

// final orangeTextStyle = TextStyle(
//   color: kPrimaryColor,
//   fontWeight: FontWeight.w800,
//   fontSize: getProportionateScreenWidth(18),
// );

// final radioButtonTextStyle = TextStyle(
//   fontSize: getProportionateScreenWidth(15),
//   fontWeight: FontWeight.w700,
//   fontFamily: "SF Pro Rounded",
// );
