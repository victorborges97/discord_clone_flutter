import 'package:clone_discord/src/colors/colors.dart';
import 'package:clone_discord/src/components/side_bar.dart';
import 'package:flutter/material.dart';

class DiscordChat extends StatefulWidget {
  const DiscordChat({super.key});
  @override
  State<DiscordChat> createState() => _DiscordChatState();
}

class _DiscordChatState extends State<DiscordChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(
            children: [
              SizedBox(
                height: 45,
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Center(
                        child: Text(
                          "Nome Sala",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.colorTextIconsSide.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Colors.black38,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                color: AppColors.bgSideUserActions,
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: AppColors.bg,
              child: Column(
                children: [
                  Container(
                    height: 45,
                  ),
                  Container(
                    height: 1,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
