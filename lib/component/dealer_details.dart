import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../size_config.dart';

class DealerDetails extends StatelessWidget {
  final Color color;
  const DealerDetails({
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
          Text("Phone", style: greyTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "+92 (300) 327-10-45",
                style: subHeading.copyWith(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {
                  // navigate to dealer location
                },
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Edit",
                      style: subHeading.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(thickness: 1.0, color: kGreyColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Address", style: greyTextStyle),
              SvgPicture.asset('assets/icons/dealer address.svg'),
            ],
          ),
          Text(
            "Gulshan-e-Iqbal\nblock-5\nKarachi\n74000",
            style: subHeading,
          ),
        ],
      ),
    );
  }
}
