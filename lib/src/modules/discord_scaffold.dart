import 'package:clone_discord/src/colors/colors.dart';
import 'package:clone_discord/src/components/nav_side.dart';
import 'package:flutter/material.dart';

class DiscordScaffold extends StatelessWidget {
  final Widget child;
  const DiscordScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.bgNavSide,
        child: Row(
          children: [
            const NavSide(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
