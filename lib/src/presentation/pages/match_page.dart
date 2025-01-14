import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/src/data/models/swiper_models.dart';
import 'package:v_mobile/src/presentation/providers/swiper_provider.dart';
import 'package:v_mobile/src/presentation/widgets/layout/back_header.dart';

class MatchPage extends ConsumerWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final swiperState = ref.watch(swiperProvider);

    if (swiperState.matches.isEmpty) {
      return const Scaffold(
        appBar: BackHeader(
          backUrl: "/meet",
          title: "Your Matches",
        ),
        body: Center(child: Text('No matches yet!')),
      );
    }

    return Scaffold(
      appBar: const BackHeader(
        backUrl: "/meet",
        title: "Your Matches",
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: swiperState.matches.length,
        itemBuilder: (context, index) {
          final match = swiperState.matches[index];
          return MatchCard(match: match);
        },
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  final SwiperUserProfileResponse match;

  const MatchCard({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: match.mainImageUrl != null
            ? CircleAvatar(
                backgroundImage: NetworkImage(match.mainImageUrl!),
                radius: 30,
              )
            : const CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
        title: Text(
          match.user.username,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          match.user.bio ?? '',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle tap event if needed
        },
      ),
    );
  }
}
