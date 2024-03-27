import 'package:clone_discord/src/controllers/auth_controller.dart';
import 'package:clone_discord/src/modules/discord_chat.dart';
import 'package:clone_discord/src/modules/discord_home.dart';
import 'package:clone_discord/src/modules/discord_login.dart';
import 'package:clone_discord/src/modules/discord_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _discordNavigatorKey = GlobalKey<NavigatorState>();

class MyRoute {
  static String home = "/home";
  static String login = "/login";
  static String splash = "/splash";
  static String chat = "/chat/:id";
}

final routerProvider = Provider<GoRouter>((ref) {

  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    /// Forwards diagnostic messages to the dart:developer log() API.
    debugLogDiagnostics: true,
    /// Initial Routing Location
    initialLocation: MyRoute.home,
    /// The listeners are typically used to notify clients that the object has been
    /// updated.
    refreshListenable: authState,

    routes: [
      ShellRoute(
        navigatorKey: _discordNavigatorKey,
        builder: (context, state, child) => DiscordScaffold(child: child),
        routes: [
          GoRoute(
            path: MyRoute.home,
            parentNavigatorKey: _discordNavigatorKey,
            builder: (context, state) {
              return const DiscordHome();
            },
          ),
          GoRoute(
            path: MyRoute.chat,
            parentNavigatorKey: _discordNavigatorKey,
            builder: (context, state) {
              return const DiscordChat();
            },
          ),
        ]
      ),
      GoRoute(
        path: MyRoute.login,
        builder: (context, state) {
          return const DiscordLogin();
        },
      ),
    ],
    redirect: (context, state) {
      /**
       * Your Redirection Logic Code  Here..........
       */
      final isAuthenticated = authState.isLoggedIn;
      /// [state.fullPath] will give current  route Path

      if (state.fullPath == MyRoute.login) {
        return isAuthenticated ? null : MyRoute.login;
      }
      /// null redirects to Initial Location

      return isAuthenticated ? null : MyRoute.login;
    },
  );
});