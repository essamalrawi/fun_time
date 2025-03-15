import 'package:flutter/material.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/grid_build_game.dart';
import 'custom_tic_tac_toe_app_bar.dart';

class TicTacToeViewBody extends StatefulWidget {
  const TicTacToeViewBody({super.key});

  @override
  State<TicTacToeViewBody> createState() => _TicTacToeViewBodyState();
}

class _TicTacToeViewBodyState extends State<TicTacToeViewBody> {
  String displayExOh = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: CustomTicTacToeAppBar(),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: GridBuildGame(),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
