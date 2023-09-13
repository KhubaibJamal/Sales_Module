import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import 'detail_text.dart';

class SegmentTable extends StatelessWidget {
  const SegmentTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //segment detail
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Segments",
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
              // Corporate
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Corporate", style: headingStyle),
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
              // muhammad jamal
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Builder", style: headingStyle),
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
              // Salman Amed
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("placeholder 3", style: headingStyle),
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
