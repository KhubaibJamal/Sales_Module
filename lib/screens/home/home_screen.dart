import 'package:agha_steel_sales_module/screens/home/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';
import 'component/drawer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(
        child: HomeDrawer(),
      ),
      body: Body(
        press: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
