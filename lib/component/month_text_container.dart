import 'package:flutter/material.dart';

import '../const.dart';

class MonthTextContainer extends StatelessWidget {
  const MonthTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: const Color(0xFFF0F0F0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "April",
            style: headingStyle.copyWith(
              color: kBlueColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Icon(Icons.arrow_drop_down_rounded),
        ],
      ),
    );
  }
}
