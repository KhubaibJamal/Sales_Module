import 'package:agha_steel_sales_module/screens/welcome/component/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
