import 'package:clone_discord/src/colors/colors.dart';
import 'package:flutter/material.dart';

class NavSide extends StatefulWidget {
  const NavSide({super.key});
  @override
  State<NavSide> createState() => _NavSideState();
}

class _NavSideState extends State<NavSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      decoration: BoxDecoration(
        color: AppColors.bgNavSide,
      ),
    );
  }
}
