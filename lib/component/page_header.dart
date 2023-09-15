import 'package:flutter/material.dart';

import 'icon_container.dart';
import '../const.dart';

class PageHeader extends StatelessWidget {
  final String title;
  const PageHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const IconContainer(),
        const SizedBox(width: 8),
        Text(
          title,
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
