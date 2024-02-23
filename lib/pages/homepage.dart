// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/widgets/drawer_mobile.dart';
import 'package:web_portfolio/widgets/header_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/widgets/header_mobile.dart';
import 'package:web_portfolio/widgets/main_desktop.dart';
import 'package:web_portfolio/widgets/main_mobile.dart';
import 'package:web_portfolio/widgets/skill_desktop.dart';

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
      body: ScreenTypeLayout(
        desktop: ListView(children: [
          HeaderDesktop(),
          MainDesktop(),
          SkillDesktop(),
        ]),
        mobile: ListView(
          children: [
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scafoldKey.currentState?.openEndDrawer();
              },
            ),
            MainMobile(),
          ],
        ),
      ),
    );
  }
}
