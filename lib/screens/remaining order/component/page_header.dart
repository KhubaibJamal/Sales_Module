import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const IconContainer(),
        const SizedBox(width: 8),
        Text(
          "Remaining orders",
          style: pageHeading.copyWith(color: kPrimaryColor),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
      ],
    );
  }
}
