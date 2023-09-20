import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/monthly%20visit%20plan/component/dealer_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class MapSearchBar extends StatelessWidget {
  const MapSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        buildBottomSheet(context);
      },
      child: Container(
        width: SizeConfig.screenWidth!,
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: const CustomSearchBar(),
      ),
    );
  }

  Future<dynamic> buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenWidth(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // search bar
                  const CustomSearchBar(),

                  SizedBox(height: getProportionateScreenWidth(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Visit of Sales", style: greyTextStyle),
                      Text("Unplanned Visit",
                          style: subHeading.copyWith(color: kPrimaryColor)),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  Container(
                    width: SizeConfig.screenWidth! * 0.9,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        // jameel ahmed
                        ListTile(
                          onTap: () {
                            dealerBottomSheet(context);
                          },
                          leading:
                              Image.asset('assets/images/jameel ahmed.png'),
                          title: Text("Jameel Ahmed", style: subHeading),
                        ),

                        // other dealers name
                        ...List.generate(
                          5,
                          (index) {
                            return Column(
                              children: [
                                const Divider(
                                    thickness: 1.0, color: kGreyColor),
                                ListTile(
                                  leading: Image.asset(
                                      'assets/images/dealer pic.png'),
                                  title: Text("Dealer Name", style: subHeading),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> dealerBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: false,
      backgroundColor: kScaffoldBgColor,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const DealerBottomSheet();
      },
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.8,
          height: 40,
          decoration: BoxDecoration(
            color: kGreyColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const SizedBox(width: 5),
              const Icon(Icons.search),
              Text("Search Maps", style: greyTextStyle)
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: kGreyColor,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Text("AA", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
