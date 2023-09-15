import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class OrderTable extends StatelessWidget {
  const OrderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 20,
            color: Colors.white10,
          ),
        ],
      ),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(3),
        },
        border: TableBorder.all(color: kGreyColor),
        children: [
          TableRow(
            children: [
              Text(
                "Cus Name Order No.",
                style: subHeading.copyWith(color: kPrimaryColor),
              ),
              Text(
                "Order Detail",
                style: subHeading.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
          TableRow(
            children: [
              Column(
                children: [
                  Text("Ejaz Ahmed", style: greyTextStyle),
                  Text("50001009", style: subHeading),
                ],
              ),
              const Column(
                children: [
                  TableData(title: "S.O Date:", subTitle: "23-01-23"),
                  TableData(title: "Valid Till:", subTitle: "07-02-23"),
                  TableData(title: "S.O Qty:", subTitle: "300"),
                  TableData(title: "Delivered Qty:", subTitle: "50"),
                  TableData(title: "D.O made:", subTitle: "50"),
                  TableData(title: "Sales Returned:", subTitle: "10"),
                  TableData(title: "Remaining Qty:", subTitle: "260"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),
          TableRow(
            children: [
              Column(
                children: [
                  Text("Salman Amed", style: greyTextStyle),
                  Text("50001009", style: subHeading),
                ],
              ),
              const Column(
                children: [
                  TableData(title: "S.O Date:", subTitle: "23-01-23"),
                  TableData(title: "Valid Till:", subTitle: "07-02-23"),
                  TableData(title: "S.O Qty:", subTitle: "300"),
                  TableData(title: "Delivered Qty:", subTitle: "50"),
                  TableData(title: "D.O made:", subTitle: "50"),
                  TableData(title: "Sales Returned:", subTitle: "10"),
                  TableData(title: "Remaining Qty:", subTitle: "260"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),
          TableRow(
            children: [
              Column(
                children: [
                  Text("M Jamal Khan", style: greyTextStyle),
                  Text("50001009", style: subHeading),
                ],
              ),
              const Column(
                children: [
                  TableData(title: "S.O Date:", subTitle: "23-01-23"),
                  TableData(title: "Valid Till:", subTitle: "07-02-23"),
                  TableData(title: "S.O Qty:", subTitle: "300"),
                  TableData(title: "Delivered Qty:", subTitle: "50"),
                  TableData(title: "D.O made:", subTitle: "50"),
                  TableData(title: "Sales Returned:", subTitle: "10"),
                  TableData(title: "Remaining Qty:", subTitle: "260"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),
          TableRow(
            children: [
              Column(
                children: [
                  Text("Jameel", style: greyTextStyle),
                  Text("50001009", style: subHeading),
                ],
              ),
              const Column(
                children: [
                  TableData(title: "S.O Date:", subTitle: "23-01-23"),
                  TableData(title: "Valid Till:", subTitle: "07-02-23"),
                  TableData(title: "S.O Qty:", subTitle: "300"),
                  TableData(title: "Delivered Qty:", subTitle: "50"),
                  TableData(title: "D.O made:", subTitle: "50"),
                  TableData(title: "Sales Returned:", subTitle: "10"),
                  TableData(title: "Remaining Qty:", subTitle: "260"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TableData extends StatelessWidget {
  final String title, subTitle;
  const TableData({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: subHeading.copyWith(color: kPrimaryColor)),
        Text(subTitle, style: subHeading),
      ],
    );
  }
}
