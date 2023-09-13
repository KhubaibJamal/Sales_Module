import 'package:agha_steel_sales_module/screens/home/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';
import 'component/drawer.dart';
import 'component/home_app_bar_widget.dart';

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
      appBar: AppBar(
        centerTitle: true,
        leading: DrawerIcon(
          press: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: const AppBarWidgetList(),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
