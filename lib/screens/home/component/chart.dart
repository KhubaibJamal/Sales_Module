import 'package:agha_steel_sales_module/const.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../size_config.dart';

final List<SalesData> chartData = [
  SalesData("", 20, Colors.blue),
  SalesData("", 5, Colors.green),
  SalesData("", 8, Colors.orange),
  SalesData("", 15, Colors.red),
];

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(16),
              right: getProportionateScreenWidth(16),
              top: getProportionateScreenWidth(16),
            ),
            width: SizeConfig.screenWidth! * 0.9,
            height: 400,
            margin: const EdgeInsets.only(right: 8, left: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 5,
                  spreadRadius: 3,
                  color: Colors.grey,
                )
              ],
            ),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                plotOffset: 2,
                isVisible: false,
              ),

              // Y-axis (horizontal)
              primaryYAxis: NumericAxis(),

              // Bar series
              series: <ColumnSeries<SalesData, String>>[
                ColumnSeries<SalesData, String>(
                  // Data source
                  dataSource: <SalesData>[
                    SalesData('Jan', 10, const Color(0xFF8EF592)),
                    SalesData('Feb', 15, kGreenColor),
                    SalesData('Mar', 20, const Color(0xFFF2C7B6)),
                    SalesData('Apr', 34, kPrimaryColor),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  pointColorMapper: (SalesData sales, _) => sales.color,
                  width: 1,
                ),
              ],
            ),
          ),
          Positioned(
            left: 8,
            child: Container(
              width: SizeConfig.screenWidth! * 0.9,
              padding: EdgeInsets.all(getProportionateScreenWidth(8)),
              decoration: const BoxDecoration(
                color: Color(0xFFEDEDED),
                // color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GraphText(text: "Sales Target", color: kPrimaryColor),
                      GraphText(
                          text: "Sales Achieve ", color: Color(0xFFF2C7B6)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GraphText(text: "Recovery Target", color: kGreenColor),
                      GraphText(
                          text: "Recovery Achieve ", color: Color(0xFF8EF592)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final double sales;
  final String month;
  final Color color;

  SalesData(this.month, this.sales, this.color);
}

class GraphText extends StatelessWidget {
  final String text;
  final Color color;
  const GraphText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(width: 5),
        Text(text, style: headingStyle),
      ],
    );
  }
}
