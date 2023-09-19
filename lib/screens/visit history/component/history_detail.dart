import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/visit%20detail/visit_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) {
          return Column(
            children: [
              const SizedBox(height: 10),
              Text("2024-01-01 | 6:30PM", style: greyTextStyle),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, VisitDetailScreen.routeName);
                },
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dealer Name", style: subHeading),
                      const Divider(color: kGreyColor, thickness: 1.5),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Address", style: greyTextStyle),
                          SvgPicture.asset('assets/icons/dealer address.svg'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text("Gulshan-e-Iqbal block-5 Karachi",
                          style: subHeading),
                      const SizedBox(height: 5),
                      Text("Phone", style: greyTextStyle),
                      const SizedBox(height: 5),
                      Text(
                        "+92 (300) 327-10-45",
                        style: subHeading.copyWith(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
