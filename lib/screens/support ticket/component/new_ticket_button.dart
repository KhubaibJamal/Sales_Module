import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class NewTicketButton extends StatelessWidget {
  const NewTicketButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // calling screen
      },
      child: Ink(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        width: SizeConfig.screenWidth! * 0.9,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/new ticket icon.svg'),
            const SizedBox(width: 10),
            Text(
              "New Ticket",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
