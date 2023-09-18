import 'package:agha_steel_sales_module/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class AppBarWidgetList extends StatelessWidget {
  const AppBarWidgetList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            ),
          ),
          Text(
            "Sale Person 1",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            child: Container(
              height: 75,
              width: 75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    super.key,
    required this.press,
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Ink(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(15, -20),
              color: Colors.white,
              spreadRadius: 20,
              blurRadius: 2,
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(getProportionateScreenWidth(8)),
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 10),
                blurRadius: 20,
                color: const Color(0xFFD3D1D84D).withOpacity(0.3),
              )
            ],
          ),
          child: SvgPicture.asset(
            'assets/icons/drawer icon.svg',
          ),
        ),
      ),
    );
  }
}
