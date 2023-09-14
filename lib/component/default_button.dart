import 'package:flutter/material.dart';
import '../const.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback press;
  final double? borderRadius;
  const DefaultButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.press,
    this.backgroundColor = kPrimaryColor,
    this.borderRadius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          shadowColor: kPrimaryColor,
          foregroundColor: Colors.white,
          backgroundColor: backgroundColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: textColor,
          ),
        ),
      ),
    );
  }
}
