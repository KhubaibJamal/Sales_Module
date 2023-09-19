import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class CustomerLocation extends StatelessWidget {
  const CustomerLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth!,
            // height: 150,
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
          const SizedBox(height: 5),
          Container(
            width: SizeConfig.screenWidth!,
            height: 60,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                "Get Direction",
                style: subHeading.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
