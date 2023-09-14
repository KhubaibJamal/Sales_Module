import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';
import '../../../component/month_text_container.dart';
import 'dealer_text.dart';
import 'dealers_table.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/upper logo.png')),

            // dealer text
            SizedBox(height: getProportionateScreenWidth(15)),
            const DealerText(),

            // month text container
            SizedBox(height: getProportionateScreenWidth(10)),
            const MonthTextContainer(),

            // dealers table
            SizedBox(height: getProportionateScreenWidth(10)),
            const DealersTable(),

            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}
