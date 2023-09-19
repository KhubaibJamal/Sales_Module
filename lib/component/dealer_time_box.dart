import 'package:flutter/material.dart';

import '../const.dart';
import '../size_config.dart';

class DealerTimeBox extends StatelessWidget {
  final Color color;
  const DealerTimeBox({
    super.key,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("DealerTimeBox", style: greyTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("09:00 - 18:00", style: subHeading),
              const Icon(Icons.arrow_drop_down_sharp, color: Colors.black),
            ],
          ),
          Text(
            "Closed",
            style: greyTextStyle.copyWith(
              color: const Color(0xFFDF563F),
            ),
          ),
        ],
      ),
    );
  }
}
