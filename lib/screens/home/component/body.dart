import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/dealer/dealer_screen.dart';
import 'package:agha_steel_sales_module/screens/home/component/chart.dart';
import 'package:agha_steel_sales_module/screens/home/component/home_heading.dart';
import 'package:agha_steel_sales_module/screens/home/component/rating_bar_comment.dart';
import 'package:agha_steel_sales_module/component/remaining_order.dart';
import 'package:agha_steel_sales_module/screens/home/component/sales_container.dart';
import 'package:agha_steel_sales_module/screens/home/component/segment_table.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import 'collection_container.dart';
import 'customer_table.dart';
import 'home_app_bar_widget.dart';

class Body extends StatelessWidget {
  final VoidCallback press;
  const Body({super.key, required this.press});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // icon
            Center(child: Image.asset('assets/images/upper logo.png')),

            // custom app bar
            AppBar(
              centerTitle: true,
              leading: DrawerIcon(
                press: press,
              ),
              title: const AppBarWidgetList(),
            ),

            // sales person rating
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            const RatingBarComment(),

            // sales person target
            SizedBox(height: getProportionateScreenWidth(25)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // first container
                SalesContainer(),

                // second container
                CollectionContainer()
              ],
            ),

            // chart
            SizedBox(height: getProportionateScreenWidth(25)),
            const Chart(),

            // customer / dealer
            SizedBox(height: getProportionateScreenWidth(25)),
            const HomeHeading(heading: "Customers / Dealers"),
            SizedBox(height: getProportionateScreenWidth(10)),
            const CustomerTable(),

            // Segment
            SizedBox(height: getProportionateScreenWidth(25)),
            const HomeHeading(heading: "Segments"),
            SizedBox(height: getProportionateScreenWidth(10)),
            const SegmentTable(),

            // view all
            SizedBox(height: getProportionateScreenWidth(10)),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DealerScreen.routeName);
              },
              child: Text(
                "View All",
                style: subHeading.copyWith(color: const Color(0xFFB5BDC9)),
              ),
            ),

            // remaining order
            SizedBox(height: getProportionateScreenWidth(25)),
            const RemainingOrder(),
            SizedBox(height: getProportionateScreenWidth(25)),
          ],
        ),
      ),
    );
  }
}
