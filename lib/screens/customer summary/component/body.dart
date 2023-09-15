import 'package:agha_steel_sales_module/component/page_header.dart';
import 'package:agha_steel_sales_module/screens/customer%20summary/component/customer_summary_rable.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

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
              const PageHeader(title: "Customer summary"),

              // customer summary table
              const CustomerSummaryTable(),
            ],
          ),
        ),
      ),
    );
  }
}
