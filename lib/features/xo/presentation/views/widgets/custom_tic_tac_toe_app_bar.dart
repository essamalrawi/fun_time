import 'package:flutter/material.dart';

import 'custom_xo_button.dart';
import 'game_result.dart';

class CustomTicTacToeAppBar extends StatelessWidget {
  const CustomTicTacToeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomXoButton(),
        SizedBox(
          width: 10,
        ),
        GameResult(),
      ],
    );
  }
}
