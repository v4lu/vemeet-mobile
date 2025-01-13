import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/core/router/app_router.dart';
import 'package:v_mobile/core/theme/app_theme.dart';
import 'package:v_mobile/src/presentation/providers/auth_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: InitializationWidget(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Vemeet Social App',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppTheme.lightTheme,
    );
  }
}

class InitializationWidget extends ConsumerStatefulWidget {
  final Widget child;
  const InitializationWidget({required this.child, super.key});

  @override
  ConsumerState<InitializationWidget> createState() =>
      _InitializationWidgetState();
}

class _InitializationWidgetState extends ConsumerState<InitializationWidget> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    await ref.read(authProvider.notifier).checkAuthStatus();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
