import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/nav_item.dart';
import 'package:web_portfolio/styles/style.dart';
import 'package:web_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
      width: double.maxFinite,
      height: 60,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
}
