import 'package:flutter/material.dart';

import '../../../component/dealer_details.dart';
import '../../../component/dealer_time_box.dart';
import '../../../component/page_header.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'customer_graph.dart';
import 'customer_location.dart';
import 'order_detail.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // header
              const PageHeader(
                title: 'Ejaz Ahmed',
                textColor: Colors.black,
              ),

              // graph
              SizedBox(height: getProportionateScreenWidth(20)),
              const CustomerGraph(),

              // order details
              SizedBox(height: getProportionateScreenWidth(30)),
              const OrderDetails(),

              // dealer date and time
              SizedBox(height: getProportionateScreenWidth(20)),
              const DealerTimeBox(color: Color(0xFFBDBDBD)),

              // dealer details
              SizedBox(height: getProportionateScreenWidth(20)),
              Text("Details", style: subHeading),
              SizedBox(height: getProportionateScreenWidth(12)),
              const DealerDetails(color: Color(0xFFBDBDBD)),

              // customer location
              SizedBox(height: getProportionateScreenWidth(20)),
              const CustomerLocation(),

              SizedBox(height: getProportionateScreenWidth(25)),
            ],
          ),
        ),
      ),
    );
  }
}
