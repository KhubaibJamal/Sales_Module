import 'package:agha_steel_sales_module/const.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

List<Map<String, String>> ticketStatusList = [
  {
    "ticketNo": "#86352465",
    "ticketTimeAndDate": "14/11/2022 (09:30AM)",
    "status": "Open",
    "issue": "NTN update request",
    "color": "0xFFD2565A",
  },
  {
    "ticketNo": "#86352465",
    "ticketTimeAndDate": "10/03/2022 (09:30AM)",
    "status": "Closed",
    "issue": "Address change",
    "color": "0xFF68B764",
  },
];

class TicketStatusList extends StatelessWidget {
  const TicketStatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        ticketStatusList.length,
        (index) => TicketDetail(
          ticketNo: "${ticketStatusList[index]["ticketNo"]}",
          ticketDateAndTime: "${ticketStatusList[index]["ticketTimeAndDate"]}",
          status: "${ticketStatusList[index]["status"]}",
          issue: "${ticketStatusList[index]["issue"]}",
          color: Color(int.parse(ticketStatusList[index]["color"]!)),
        ),
      ),
    );
  }
}

class TicketDetail extends StatelessWidget {
  final String ticketNo, ticketDateAndTime, status, issue;
  final Color color;
  const TicketDetail({
    super.key,
    required this.ticketNo,
    required this.ticketDateAndTime,
    required this.status,
    required this.issue,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(8)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(ticketNo, style: subHeading),
                Text(
                  ticketDateAndTime,
                  style: subHeading.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const Divider(color: kGreyColor, thickness: 1.5),
            SizedBox(height: getProportionateScreenWidth(10)),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Status", style: greyTextStyle),
                SizedBox(height: getProportionateScreenWidth(8)),
                Text(
                  status,
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(8)),
                Text("Issue", style: greyTextStyle),
                SizedBox(height: getProportionateScreenWidth(8)),
                Text(issue, style: subHeading),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
