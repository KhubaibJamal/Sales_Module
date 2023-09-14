import 'package:flutter/material.dart';

import '../../../component/detail_text.dart';
import '../../../component/recovery_pop_up.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class DealersTable extends StatelessWidget {
  const DealersTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //segment detail
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
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2),
            },
            border: TableBorder.all(color: kGreyColor),
            children: [
              // ejaz ahmed
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
                            title: "Collection Plan PKR", subTitle: "500,000"),
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

              // salman ahmed
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
                            title: "Collection Plan PKR", subTitle: "500,000"),
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

              // muhammad jamal khan
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Muhammad Jamal Khan", style: headingStyle),
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

              // jameel
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jameel", style: headingStyle),
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

              // salman
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Salman", style: headingStyle),
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
        )
      ],
    );
  }
}
