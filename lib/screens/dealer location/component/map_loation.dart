import 'package:flutter/material.dart';

import '../../../component/icon_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class MapLocation extends StatelessWidget {
  const MapLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            border: Border.all(color: kGreyColor, width: 1.5),
          ),
          child: Image.asset(
            'assets/images/location.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.8,
          child: DefaultButtonWithIcon(
            text: "Get Location",
            icon: 'assets/icons/location icon.svg',
            press: () {},
          ),
        )
      ],
    );
  }
}
