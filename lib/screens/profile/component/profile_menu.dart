import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileMenuItem(
          title: "E-mail",
          text: 'Kamal.ASIL@gmail.com',
        ),
        ProfileMenuItem(
          title: "Phone Number",
          text: '(+92) 300-1234567',
        ),
        ProfileMenuItem(
          title: "Street (Include house number)",
          text: 'House No. 12, ',
        ),
        ProfileMenuItem(
          title: "Employee Code",
          text: '32425',
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String? title, text;
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(
            color: kSecondaryTextColor,
            fontWeight: FontWeight.w400,
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: SizeConfig.screenWidth! * 0.9,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFD6D6D6),
            borderRadius: BorderRadius.circular(9),
          ),
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenWidth(17),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
      ],
    );
  }
}
