import 'package:flutter/material.dart';

import '../screens/profile/profile_screen.dart';
import 'icon_container.dart';
import '../const.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final Color textColor;
  const PageHeader({
    super.key,
    required this.title,
    this.textColor = kPrimaryColor,
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
          style: pageHeading.copyWith(color: textColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ),
      ],
    );
  }
}
