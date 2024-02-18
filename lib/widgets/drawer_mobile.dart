import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/nav_item.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          for (int i = 0; i < navTitles.length; i++)
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              horizontalTitleGap: 30,
              leading: navIcons[i],
              iconColor: CustomColor.whitePrimary,
              title: Text(
                navTitles[i],
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                ),
              ),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
