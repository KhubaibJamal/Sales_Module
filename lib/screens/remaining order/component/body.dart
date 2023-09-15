import 'package:agha_steel_sales_module/screens/remaining%20order/component/page_header.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'order_table.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page header
              const PageHeader(),

              // customer table
              SizedBox(height: getProportionateScreenWidth(10)),
              const OrderTable(),
              SizedBox(height: getProportionateScreenWidth(15)),
            ],
          ),
        ),
      ),
    );
  }
}
