import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TicketDetailContainer(
          color: const Color(0xFFF0F0F0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Name"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jameel Ahmed", style: subHeading),
                  SvgPicture.asset('assets/icons/name.svg'),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        TicketDetailContainer(
          color: Colors.white,
          child: Text(
            "Email or Phone number",
            style: greyTextStyle,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! * 0.3,
              child: TicketDetailContainer(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Department"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sales", style: subHeading),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.4,
              child: TicketDetailContainer(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Priority"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Medium", style: subHeading),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TicketDetailContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const TicketDetailContainer({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.8,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kGreyColor, width: 1.5),
      ),
      child: child,
    );
  }
}
