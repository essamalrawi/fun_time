import 'package:flutter/material.dart';

class GameAvatar extends StatelessWidget {
  const GameAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/games_avatar/xo.png',
                fit: BoxFit.cover)),
      ),
    );
  }
}
