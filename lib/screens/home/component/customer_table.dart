import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/component/recovery_pop_up.dart';
import 'package:agha_steel_sales_module/screens/customer%20data/customer_data_screen.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';

import '../../../component/detail_text.dart';

class CustomerTable extends StatelessWidget {
  const CustomerTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //dealers and details
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Dealers",
              style: headingStyle.copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(18),
              ),
            ),
            Text(
              "Detail",
              style: headingStyle.copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(18),
              ),
            ),
          ],
        ),

        // table
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
              vertical: getProportionateScreenWidth(8)),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CustomerDataScreen.routeName);
            },
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(2),
              },
              border: TableBorder.all(color: kGreyColor),
              children: [
                // ejaz
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("Ejaz Ahmed", style: headingStyle),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailText(
                              title: "Collection Plan PKR",
                              subTitle: "500,000"),
                          DetailText(
                            title: "Achieve Plan PKR",
                            subTitle: "500,000",
                            textColor: kGreenColor,
                          ),
                          DetailText(title: "Target MTN", subTitle: "50"),
                          DetailText(
                            title: "Achieve MTN",
                            subTitle: "39.50",
                            textColor: kPrimaryColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                // muhammad jamal
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("Muhamamd Jamal Khan", style: headingStyle),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailText(
                              title: "Collection Plan PKR",
                              subTitle: "500,000"),
                          DetailText(
                            title: "Achieve Plan PKR",
                            subTitle: "500,000",
                            textColor: kGreenColor,
                          ),
                          DetailText(title: "Target MTN", subTitle: "50"),
                          DetailText(
                            title: "Achieve MTN",
                            subTitle: "59.50",
                            textColor: kPrimaryColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                // Salman Amed
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Text("Salman Amed", style: headingStyle),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                // pop up
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const RecoveryPopUp();
                                  },
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF6252),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "overdue",
                                    style: subHeading.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailText(
                            title: "Collection Plan PKR",
                            subTitle: "500,000",
                          ),
                          DetailText(
                            title: "Achieve Plan PKR",
                            subTitle: "500,000",
                            textColor: kGreenColor,
                          ),
                          DetailText(title: "Target MTN", subTitle: "50"),
                          DetailText(
                            title: "Achieve MTN",
                            subTitle: "59.50",
                            textColor: kPrimaryColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
