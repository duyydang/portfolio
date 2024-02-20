import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/images.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  'Hi\nI\'m Duy Dang\nI\'m working Flutter Dev\nAnd Database Admintrator',
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Get in touch'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Image.asset(
              Images.myLogo,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }
}
