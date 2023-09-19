import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'complete_order_box.dart';
import 'order_cart.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app logo
              Center(child: Image.asset('assets/images/upper logo.png')),

              // page header
              Row(
                children: [
                  const IconContainer(),
                  const Spacer(),
                  Text("Order History", style: pageHeading),
                  const Spacer(flex: 2),
                ],
              ),

              // order container

              SizedBox(height: getProportionateScreenWidth(30)),
              const CompleteOrderBox(),
              OrderCard(
                orderStatus: "Dispatched",
                orderNumber: "#10013331",
                orderStatusIcon: "assets/icons/dispatch.svg",
                trackButton: () {},
                detailButton: () {},
              ),
              OrderCard(
                orderStatus: "On the way",
                orderNumber: "#10013228",
                orderStatusIcon: "assets/icons/on the way.svg",
                trackButton: () {},
                detailButton: () {},
              ),
              OrderCard(
                orderStatus: "Line up for delivery",
                orderNumber: "#10013227",
                orderStatusIcon: "assets/icons/lined up for detail.svg",
                trackButton: () {},
                detailButton: () {},
              ),
              OrderCard(
                orderStatus: "Delivered",
                orderNumber: "#10013222",
                orderStatusIcon: "assets/icons/complete order.svg",
                trackButton: () {},
                detailButton: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
