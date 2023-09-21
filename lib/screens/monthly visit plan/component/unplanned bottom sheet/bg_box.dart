import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class BackgroundBox extends StatelessWidget {
  final Widget child;
  const BackgroundBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      height: SizeConfig.screenHeight! * 0.15,
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
