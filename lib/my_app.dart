import 'package:clone_discord/src/discord_home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DiscordClone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5865F2),
          background: const Color(0xFF313338),
        ),
      ),
      home: const DiscordHome(),
    );
  }
}
