import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/platform_item.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            'What I can do',
            style: TextStyle(
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Platform and skill
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Platform
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Wrap(
                  children: [
                    for (int i = 0; i < Skills.length; i++)
                      PlatformItem(Skills[i], Item[i])
                  ],
                ),
              ),
              //Language
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Wrap(
                    children: [for (int i = 0; i < 5; i++) LanguageItem()]),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget LanguageItem() {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white12,
      ),
      margin: EdgeInsets.all(3),
      child: ListTile(
        leading: Image.asset(
          'assets/icons/flutter.png',
          width: 20,
        ),
        title: Text(
          'Flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget PlatformItem(String asset, String name) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white12,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.all(3),
      child: ListTile(
        leading: Image.asset(
          asset,
          width: 30,
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
