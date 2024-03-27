import 'package:clone_discord/my_router.dart';
import 'package:clone_discord/src/modules/discord_home.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: "DiscordClone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'GGSans',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5865F2),
          background: const Color(0xFF313338),
        ),
      ),
      // home: const DiscordHome(),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
