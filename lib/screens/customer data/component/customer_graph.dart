import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class CustomerGraph extends StatelessWidget {
  const CustomerGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.9,
          height: 422,
          padding: EdgeInsets.all(getProportionateScreenWidth(8)),
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Aging Analysis (PKR)",
              style: subHeading.copyWith(color: Colors.white),
            ),
          ),
        ),

        Positioned(
          top: 30,
          // bottom: 10,
          child: Container(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(10),
              right: getProportionateScreenWidth(10),
              top: getProportionateScreenWidth(10),
            ),
            width: SizeConfig.screenWidth! * 0.9,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 15,
                  color: Color(0xFFFE724C3B),
                )
              ],
            ),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                plotOffset: 2,
                labelStyle: headingStyle,
                majorGridLines: const MajorGridLines(color: Colors.transparent),
              ),

              // Y-axis (horizontal)
              primaryYAxis: NumericAxis(),

              // Bar series (changed from ColumnSeries)
              series: <BarSeries<SalesData, String>>[
                BarSeries<SalesData, String>(
                  // Data source
                  dataSource: <SalesData>[
                    SalesData('Net Outstanding\n79,369,328', 30, kPrimaryColor),
                    SalesData('Total Due\n50,084,609', 25, kPrimaryColor),
                    SalesData('45+ days\n4,465,710', 5, kPrimaryColor),
                    SalesData('45 days\n29,384,039', 15, kPrimaryColor),
                    SalesData('30 days\n16,234,860', 10, kPrimaryColor),
                    SalesData('15 days\n0', 0, kPrimaryColor),
                    SalesData('7 days\n0', 0, kPrimaryColor),
                    SalesData('Net with due date\n29,284,719', 22, kGreenColor),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  pointColorMapper: (SalesData sales, _) => sales.color,
                  width: 0.2,
                ),
              ],
            ),
          ),
        ),

        //
        // Positioned(
        //   top: -5,
        //   bottom: 10,
        //   child: Container(
        //     width: SizeConfig.screenWidth! * 0.9,
        //     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        //     decoration: const BoxDecoration(
        //       color: kPrimaryColor,
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(15),
        //         topRight: Radius.circular(15),
        //       ),
        //     ),
        //     child: const Center(child: Text("Aging Analysis (PKR)")),
        //   ),
        // ),
      ],
    );
  }
}

class SalesData {
  final double sales;
  final String month;
  final Color color;

  SalesData(this.month, this.sales, this.color);
}
