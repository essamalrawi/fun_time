import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/tic_tac_toe_view_body.dart';

import '../manager/offline_1_v_1_mode/offline_1_v_1_mode_cubit.dart';

class TicTacToeView extends StatelessWidget {
  const TicTacToeView({super.key});
  static const String routeName = 'xo_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFC9983),
      body: BlocProvider(
        create: (context) => Offline1V1ModeCubit(),
        child: TicTacToeViewBody(),
      ),
    );
  }
}
