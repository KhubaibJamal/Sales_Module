import 'package:agha_steel_sales_module/screens/auth/component/auth_text.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const CustomHeader(),
          Image.asset('assets/images/splash logo.png'),
          const AuthText(),
        ],
      ),
    );
  }
}
