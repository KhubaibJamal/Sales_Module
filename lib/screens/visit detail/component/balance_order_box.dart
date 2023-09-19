import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        VisitDetailBox(
            title: "Ledger Balance", icon: 'assets/icons/ledger balance.svg'),
        VisitDetailBox(
          title: "New Order Details",
          icon: 'assets/icons/new order detail icon.svg',
        ),
      ],
    );
  }
}

class VisitDetailBox extends StatelessWidget {
  final String title, icon;
  const VisitDetailBox({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.4,
      height: SizeConfig.screenWidth! * 0.4,
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(height: getProportionateScreenWidth(12)),
          Text(
            title,
            textAlign: TextAlign.center,
            style: headingStyle.copyWith(
              color: const Color(0xFF696987),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
