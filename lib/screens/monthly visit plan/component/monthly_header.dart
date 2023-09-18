import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class MonthlyHeader extends StatelessWidget {
  const MonthlyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconContainer(),
          Text("Site Visits", style: subHeading),
          Container(
            height: 45,
            width: 40,
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(5, 10),
                  blurRadius: 20,
                  color: Color.fromARGB(210, 241, 241, 237),
                )
              ],
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/map icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
