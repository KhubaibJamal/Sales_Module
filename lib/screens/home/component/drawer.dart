import 'package:agha_steel_sales_module/screens/visit%20history/visit_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import '../home_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserInfo(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // home
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/home icon.svg'),
                ),

                // notification
                ListTile(
                  title: Text(
                    "Notification",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading:
                      SvgPicture.asset('assets/icons/notification icon.svg'),
                ),

                // visit history
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, VisitHistoryScreen.routeName);
                  },
                  title: Text(
                    "Visit History",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading:
                      SvgPicture.asset('assets/icons/visit history icon.svg'),
                ),

                // Monthly visit plan
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, OrderHistoryScreen.routeName);
                  },
                  title: Text(
                    "Monthly Visit Plan",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading:
                      SvgPicture.asset('assets/icons/visit history icon.svg'),
                ),

                // Remaining Order
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(
                    //     context, ScheduledOrderScreen.routeName);
                  },
                  title: Text(
                    "Remaining orders",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading:
                      SvgPicture.asset('assets/icons/remaining order icon.svg'),
                ),

                // Customer Summary
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, ComplaintsScreen.routeName);
                  },
                  title: Text(
                    "Customer Summary",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset(
                      'assets/icons/customer summary icon.svg'),
                ),

                // KPI
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, ComplaintsScreen.routeName);
                  },
                  title: Text(
                    "KPI",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/kpi icon.svg'),
                ),

                // report
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, ComplaintsScreen.routeName);
                  },
                  title: Text(
                    "Report",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/report icon.svg'),
                ),

                const Spacer(),

                // logout button
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(15.0)),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! / 2.75,
                        child: DefaultButton(
                          text: "Log Out",
                          textColor: Colors.white,
                          press: () {},
                        ),
                      ),
                      Positioned(
                        top: 22,
                        left: 15,
                        child: SvgPicture.asset(
                          'assets/icons/logout.svg',
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(20))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            // Spacer(),
            Text(
              "Sale Person1",
              style: TextStyle(
                color: kTextColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "email@domain.com",
              style: TextStyle(
                color: kSecondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
