// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/widgets/drawer_mobile.dart';
import 'package:web_portfolio/widgets/header_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: DrawerMobile(),
      body: ListView(
        children: [
          //MENU
          ScreenTypeLayout(
            desktop: HeaderDesktop(),
            mobile: HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scafoldKey.currentState?.openEndDrawer();
              },
            ),
          ),

          Container(
            color: Colors.white,
            width: double.maxFinite,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            width: double.maxFinite,
            height: 500,
          ),
        ],
      ),
    );
  }
}
