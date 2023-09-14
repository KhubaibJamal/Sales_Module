import 'package:agha_steel_sales_module/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

List<Map<String, String>> demoTicketList = [
  {
    "text": "1",
    "icon": "assets/icons/open ticket.svg",
    "ticketText": "Open Tickets",
    "color": "0xFFCB3E43",
  },
  {
    "text": "2",
    "icon": "assets/icons/close ticket.svg",
    "ticketText": "Close Tickets",
    "color": "0xFF52AD4E",
  },
  {
    "text": "6",
    "icon": "assets/icons/answer ticket.svg",
    "ticketText": "Answer Tickets",
    "color": "0xFF67BED9",
  },
  {
    "text": "1",
    "icon": "assets/icons/customer reply.svg",
    "ticketText": "Customer-Reply",
    "color": "0xFFEBA95C",
  },
];

class TicketGrid extends StatelessWidget {
  const TicketGrid({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: getProportionateScreenWidth(1.20),
      ),
      itemBuilder: ((context, index) {
        return TicketBox(
          text: "${demoTicketList[index]["text"]}",
          ticketText: " ${demoTicketList[index]["ticketText"]}",
          icon: "${demoTicketList[index]["icon"]}",
          color: Color(int.parse(demoTicketList[index]["color"]!)),
        );
      }),
    );
  }
}

class TicketBox extends StatelessWidget {
  final String text, ticketText, icon;
  final Color color;
  const TicketBox({
    super.key,
    required this.text,
    required this.ticketText,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -1,
            child: SvgPicture.asset(
              icon,
              height: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(60),
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(ticketText, style: greyTextStyle),
              Divider(thickness: 2.5, color: color),
            ],
          ),
        ],
      ),
    );
  }
}
