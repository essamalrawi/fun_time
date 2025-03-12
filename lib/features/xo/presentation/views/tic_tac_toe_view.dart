import 'package:flutter/material.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/tic_tac_toe_view_body.dart';

class TicTacToeView extends StatelessWidget {
  const TicTacToeView({super.key});
  static const String routeName = 'xo_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFC9983),
      body: TicTacToeViewBody(),
    );
  }
}
