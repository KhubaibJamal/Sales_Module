import 'package:agha_steel_sales_module/screens/auth/component/body.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static String routeName = "/auth";
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
