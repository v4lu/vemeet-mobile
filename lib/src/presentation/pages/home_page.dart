import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:v_mobile/src/presentation/providers/auth_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            },
            child: const Text('Logout'),
          ),
          ElevatedButton(
            onPressed: () {
              // push to page /

              context.go("/");
            },
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }
}
