import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.home,
        color: CustomColor.whitePrimary,
      ),
      onTap: onTap,
    );
  }
}
