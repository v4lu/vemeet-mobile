import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:v_mobile/core/theme/app_colors.dart';
import 'package:v_mobile/src/data/models/swiper_models.dart';
import 'package:v_mobile/src/presentation/providers/swiper_provider.dart';
import 'package:v_mobile/src/presentation/widgets/layout/back_header.dart';

class SwiperPage extends ConsumerWidget {
  const SwiperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final swiperState = ref.watch(swiperProvider);

    if (swiperState.profiles.isEmpty) {
      return Scaffold(
        appBar: BackHeader(
          backUrl: "/",
          title: "Meet new people",
          rightIcons: [
            IconButton(
              icon: const Icon(SolarIconsBold.heart),
              color: AppColors.primary,
              iconSize: 32,
              onPressed: () {
                GoRouter.of(context).go("/matches");
              },
            ),
          ],
        ),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (swiperState.error != null) {
      return Center(child: Text('Error: ${swiperState.error}'));
    }

    return Scaffold(
      appBar: BackHeader(
        backUrl: "/",
        title: "Meet new people",
        rightIcons: [
          IconButton(
            icon: const Icon(SolarIconsBold.heart),
            color: AppColors.primary,
            iconSize: 32,
            onPressed: () {
              GoRouter.of(context).go("/matches");
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          for (int i = 0; i < swiperState.profiles.length; i++)
            Positioned.fill(
              child: ProfileCard(
                profile: swiperState.profiles[i],
                onSwipeLeft: () {
                  ref.read(swiperProvider.notifier).swipe(
                        swiperState.profiles[i].userId,
                        false,
                      );
                },
                onSwipeRight: () {
                  ref.read(swiperProvider.notifier).swipe(
                        swiperState.profiles[i].userId,
                        true,
                      );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  final SwiperPotencialUserProfileResponse profile;
  final VoidCallback onSwipeLeft;
  final VoidCallback onSwipeRight;

  const ProfileCard({
    super.key,
    required this.profile,
    required this.onSwipeLeft,
    required this.onSwipeRight,
  });

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  Offset _position = Offset.zero;
  double _rotation = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final rotationFactor = 0.05;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onVerticalDragUpdate: (_) {},
      onHorizontalDragUpdate: (details) {
        setState(() {
          _position += Offset(details.delta.dx, 0);
          // Calculate rotation based on drag position
          _rotation = (_position.dx / screenWidth) * rotationFactor;
        });
      },
      onHorizontalDragEnd: (details) {
        final velocity = details.primaryVelocity ?? 0;
        final isSwipingRight = velocity > 0;

        if (velocity.abs() < 300 && _position.dx.abs() < screenWidth * 0.4) {
          // Reset position if not enough velocity or distance
          setState(() {
            _position = Offset.zero;
            _rotation = 0;
          });
          return;
        }

        // Animate card off screen
        setState(() {
          _position = Offset(
              isSwipingRight ? screenWidth * 1.5 : -screenWidth * 1.5, 0);
          _rotation = isSwipingRight ? rotationFactor : -rotationFactor;
        });

        // Trigger appropriate callback after animation
        if (isSwipingRight) {
          widget.onSwipeRight();
        } else {
          widget.onSwipeLeft();
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        transform: Matrix4.identity()
          ..translate(_position.dx)
          ..rotateZ(_rotation),
        child: Card(
          margin: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Profile image
                    widget.profile.mainImageUrl != null
                        ? Image.network(
                            widget.profile.mainImageUrl!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        : Container(
                            color: Colors.grey,
                            child: const Icon(Icons.person, size: 100),
                          ),
                    // Swipe indicators
                    if (_position.dx != 0)
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (_position.dx < 0)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'NOPE',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            if (_position.dx > 0)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'LIKE',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.profile.user.username}, ${widget.profile.user.birthday}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (widget.profile.description != null)
                      Text(
                        widget.profile.description!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    Text(
                      '${widget.profile.distance.toStringAsFixed(1)} km away',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // Action buttons
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: widget.onSwipeLeft,
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const Icon(Icons.close),
                    ),
                    ElevatedButton(
                      onPressed: widget.onSwipeRight,
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
