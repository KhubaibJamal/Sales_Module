import 'package:agha_steel_sales_module/const.dart';
import 'package:agha_steel_sales_module/screens/account%20history/account_history_screen.dart';
import 'package:agha_steel_sales_module/screens/order%20history/order_history.dart';
import 'package:agha_steel_sales_module/screens/visit%20history/visit_history_screen.dart';
import 'package:agha_steel_sales_module/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HistoryTile(
          title: "Account History",
          icon: 'assets/icons/account history.svg',
          press: () {
            Navigator.pushNamed(context, AccountHistory.routeName);
          },
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        HistoryTile(
          title: "Orders History",
          icon: 'assets/icons/order history.svg',
          press: () {
            Navigator.pushNamed(context, OrderHistory.routeName);
          },
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        HistoryTile(
          title: "Visits History",
          icon: 'assets/icons/visit history.svg',
          press: () {
            Navigator.pushNamed(context, VisitHistoryScreen.routeName);
          },
        ),
      ],
    );
  }
}

class HistoryTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;
  const HistoryTile({
    super.key,
    required this.title,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 15,
            color: Colors.grey,
          )
        ],
      ),
      child: ListTile(
        onTap: press,
        leading: SvgPicture.asset(icon),
        title: Text(title, style: subHeading),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
}
