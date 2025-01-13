import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/src/presentation/providers/session_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    if (userState.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (userState.error != null) {
      return Scaffold(
        body: Center(
          child: Text('Error: ${userState.error}'),
        ),
      );
    }

    final user = userState.user;
    if (user == null) {
      return const Scaffold(
        body: Center(
          child: Text('No user data available'),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Text('ID: ${user.id}'),
          Text('Username: ${user.username}'),
        ],
      ),
    );
  }
}
