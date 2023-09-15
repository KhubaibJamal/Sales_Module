import 'package:flutter/material.dart';

import '../../../component/summary_rable.dart';
import '../../../component/page_header.dart';
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
              const PageHeader(title: "Seller Summary"),

              // customer summary table
              const SummaryTable(),
            ],
          ),
        ),
      ),
    );
  }
}
