import 'package:flutter/material.dart';

import 'complete_text_contaner.dart';
import 'order_cart.dart';

class CompleteOrderBox extends StatelessWidget {
  const CompleteOrderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        OrderCard(
          orderStatus: "Received",
          orderNumber: "#10013332",
          orderStatusIcon: "assets/icons/complete order.svg",
          trackButton: () {},
          detailButton: () {},
        ),
        const Positioned(
          top: -30,
          right: 15,
          child: CompleteTextContainer(),
        ),
      ],
    );
  }
}
