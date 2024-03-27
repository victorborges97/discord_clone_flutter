import 'package:clone_discord/src/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DiscordLogin extends HookConsumerWidget  {
  const DiscordLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text("Entrar"),
          onPressed: () {
            ref.read(authProvider.notifier).signIn();
          },
        ),
      ),
    );
  }
}
