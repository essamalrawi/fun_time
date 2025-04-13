import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/grid_build_game.dart';
import '../../manager/offline_1_v_1_mode/offline_1_v_1_mode_cubit.dart'
    show Offline1V1ModeCubit, Offline1V1ModeState;
import 'custom_tic_tac_toe_app_bar.dart';

class TicTacToeViewBody extends StatelessWidget {
  const TicTacToeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: BlocBuilder<Offline1V1ModeCubit, Offline1V1ModeState>(
            builder: (context, state) {
              return CustomTicTacToeAppBar();
            },
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: BlocBuilder<Offline1V1ModeCubit, Offline1V1ModeState>(
              builder: (context, state) {
                return GridBuildGame();
              },
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
