import 'package:clone_discord/src/colors/colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final List<Widget> children;
  const SideBar({super.key, this.children = const <Widget>[]});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
          color: AppColors.bgSide,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
          )
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
