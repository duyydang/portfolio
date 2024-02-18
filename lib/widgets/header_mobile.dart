import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/styles/style.dart';
import 'package:web_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.maxFinite,
      height: 60,
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: onMenuTap,
              icon: Icon(
                Icons.menu,
                color: CustomColor.whitePrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
