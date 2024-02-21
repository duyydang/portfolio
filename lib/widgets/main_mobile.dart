import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/images.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});
  @override
  Widget build(BuildContext context) {
    final sizePage = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            Images.myLogo,
            height: sizePage / 1.2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi\nI\'m Duy Dang\nI\'m working Flutter Dev\nAnd Database Admintrator',
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: sizePage / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: sizePage / 1.8,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Get in touch'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
