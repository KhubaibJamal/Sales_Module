import 'package:agha_steel_sales_module/screens/monthly%20visit%20plan/component/unplanned%20bottom%20sheet/time_widget.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'address_box.dart';
import 'date_widget.dart';
import 'heading.dart';

class UnPlannedBottomSheet extends StatelessWidget {
  const UnPlannedBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // heading
            const Heading(),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenWidth(15),
              ),
              child: Column(
                children: [
                  // date picker
                  const DateWidget(),

                  // time selection
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const TimeWidget(),

                  // address text fields
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const AddressBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
