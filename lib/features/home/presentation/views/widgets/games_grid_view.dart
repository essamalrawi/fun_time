import 'package:flutter/material.dart';
import 'package:fun_time/features/home/presentation/views/widgets/game_avatar.dart';

class GamesGridView extends StatelessWidget {
  const GamesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          crossAxisCount: 2,
          childAspectRatio: 200 / 250,
        ),
        itemBuilder: (context, index) {
          return const GameAvatar();
        });
  }
}
