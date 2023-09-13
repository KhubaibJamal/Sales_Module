import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../enum.dart';
import '../screens/home/home_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    const Color inactiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // home icon
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/home nav.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // dealer
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, DealerScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/dealer list.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.dealerList == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // support ticket
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, SettingScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/support ticket.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.support == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // dealer location
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/dealer location.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.dealerLocation == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
