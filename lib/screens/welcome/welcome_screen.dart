import 'package:agha_steel_sales_module/screens/welcome/component/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      // clipBehavior: Clip.antiAlias,
      fit: StackFit.expand,
      children: [
        Opacity(
          opacity: 0.9,
          child: Image.asset(
            "assets/images/login bg.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: const Body(),
        )
      ],
    );
  }
}
