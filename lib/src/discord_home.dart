import 'package:clone_discord/src/colors/colors.dart';
import 'package:flutter/material.dart';

class DiscordHome extends StatefulWidget {
  const DiscordHome({super.key});
  @override
  State<DiscordHome> createState() => _DiscordHomeState();
}

class _DiscordHomeState extends State<DiscordHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.bgNavSide,
        child: Row(
          children: [
            Container(
              width: 72,
              decoration: BoxDecoration(
                color: AppColors.bgNavSide,
              ),
            ),
            Container(
              width: 240,
              decoration: BoxDecoration(
                color: AppColors.bgSide,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.bgNavSide,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          margin: const EdgeInsets.all(7),
                          child: Center(
                            child: Text(
                              "Encontre ou comece uma conversa",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
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
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                            child: Material(
                              type: MaterialType.transparency,
                              child: ListTile(
                                title: Text(
                                  "Amigos",
                                  style: TextStyle(
                                    color: AppColors.colorTextIconsSide,
                                    fontSize: 16,
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                ),
                                dense: true,
                                selected: true,
                                selectedTileColor: AppColors.bg2.withOpacity(0.6),
                                onTap: () {},
                                hoverColor: AppColors.bg,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                            child: Material(
                              type: MaterialType.transparency,
                              child: ListTile(
                                title: Text(
                                  "Nitro",
                                  style: TextStyle(
                                    color: AppColors.colorTextIconsSide,
                                    fontSize: 16,
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                ),
                                dense: true,
                                selected: false,
                                selectedTileColor: AppColors.bg2.withOpacity(0.6),
                                onTap: () {},
                                hoverColor: AppColors.bg,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "MENSAGENS DIRETAS",
                                  style: TextStyle(
                                    color: AppColors.colorTextIconsSide.withOpacity(0.6),
                                    fontSize: 10.5,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: AppColors.colorTextIconsSide.withOpacity(0.6),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                            child: Material(
                              type: MaterialType.transparency,
                              child: ListTile(
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      minRadius: 15,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "filipedutra",
                                      style: TextStyle(
                                        color: AppColors.colorTextIconsSide.withOpacity(0.6),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                ),
                                dense: true,
                                selectedTileColor: AppColors.bg2.withOpacity(0.6),
                                onTap: () {},
                                hoverColor: AppColors.bg,
                              ),
                            ),
                          ),
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
      ),
    );
  }
}
