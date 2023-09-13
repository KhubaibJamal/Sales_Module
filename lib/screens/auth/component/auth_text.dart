import 'package:agha_steel_sales_module/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class AuthText extends StatelessWidget {
  const AuthText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          Text(
            "Enter your phone number to verify your account",
            style: TextStyle(
              color: kSecondaryTextColor,
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),

          // text field
          CustomInputTextField(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 9.0),
                  child: Image.asset('assets/images/pak flag.png'),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "+92",
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          const CustomInputTextField(
              child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.visibility),
              ],
            ),
          )),
          SizedBox(height: getProportionateScreenWidth(30)),

          // verify button
          Center(
            child: SizedBox(
              width: SizeConfig.screenWidth! / 1.5,
              child: DefaultButton(
                text: "Verify",
                backgroundColor: Colors.black,
                textColor: Colors.white,
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomInputTextField extends StatelessWidget {
  final Widget child;
  const CustomInputTextField({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: kPrimaryColor,
          width: 1.5,
        ),
      ),
      child: child,
    );
  }
}
