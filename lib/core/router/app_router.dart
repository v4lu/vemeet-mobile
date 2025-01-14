import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/core/theme/app_colors.dart';
import 'package:v_mobile/src/presentation/pages/home_page.dart';
import 'package:v_mobile/src/presentation/pages/login_page.dart';
import 'package:v_mobile/src/presentation/pages/match_page.dart';
import 'package:v_mobile/src/presentation/pages/profile_page.dart';
import 'package:v_mobile/src/presentation/pages/swiper_page.dart';
import 'package:v_mobile/src/presentation/providers/auth_provider.dart';
import 'package:solar_icons/solar_icons.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    refreshListenable: router,
    initialLocation: '/',
    redirect: (context, state) {
      final isLoggedIn = ref.read(authProvider).isAuthenticated;
      final isLoggingIn = state.matchedLocation == '/login';

      if (!isLoggedIn && !isLoggingIn) {
        return '/login';
      }

      if (isLoggedIn && isLoggingIn) {
        return '/';
      }

      return null;
    },
    routes: [
      // Auth routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),

      // App routes (protected)
      ShellRoute(
          builder: (context, state, child) =>
              ScaffoldWithBottomNav(child: child),
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => const HomePage(),
            ),
            GoRoute(
              path: "/profile",
              builder: (context, state) => const ProfilePage(),
            ),
            GoRoute(
              path: "/meet",
              builder: (context, state) => const SwiperPage(),
            ),
            GoRoute(
              path: "/matches",
              builder: (context, state) => const MatchPage(),
            )
          ]),
    ],
  );
});

class ScaffoldWithBottomNav extends StatelessWidget {
  const ScaffoldWithBottomNav({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final showHeader =
        ['/', '/profile'].contains(GoRouterState.of(context).matchedLocation);
    return Scaffold(
      appBar: showHeader
          ? AppBar(
              title: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg',
                    height: 40,
                    width: 40,
                    semanticsLabel: 'Logo',
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Vemeet',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: const Icon(SolarIconsBold.chatRound),
                  color: AppColors.primary,
                  onPressed: () {
                    context.go('/chats');
                  },
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1.0),
                child: Container(
                  color: AppColors.border,
                  height: 1.0,
                ),
              ),
            )
          : null,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(SolarIconsBold.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(SolarIconsBold.fire),
            label: 'Meet People',
          ),
          BottomNavigationBarItem(
            icon: Icon(SolarIconsBold.user),
            label: 'Profile',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location == '/') return 0;
    if (location.startsWith('/meet')) return 1;
    if (location.startsWith('/profile')) return 2;

    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
      case 1:
        GoRouter.of(context).go('/meet');
      case 2:
        GoRouter.of(context).go('/profile');
    }
  }
}

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(authProvider, (previous, next) {
      if (previous?.isAuthenticated != next.isAuthenticated) {
        notifyListeners();
      }
    });
  }
}
