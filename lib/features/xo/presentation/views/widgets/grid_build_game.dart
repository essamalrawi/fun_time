import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/o_symbol.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/x_symbol.dart';

import '../../manager/offline_1_v_1_mode/offline_1_v_1_mode_cubit.dart';

class GridBuildGame extends StatefulWidget {
  const GridBuildGame({super.key});

  @override
  State<GridBuildGame> createState() => _GridBuildGameState();
}

class _GridBuildGameState extends State<GridBuildGame> {
  String currectMove = "X";

  @override
  Widget build(BuildContext context) {
    const double borderWidth = 13;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 9,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (!context.read<Offline1V1ModeCubit>().spots.containsKey(index)) {
              if (true) {}
              setState(() {
                context.read<Offline1V1ModeCubit>().spots[index] = currectMove;
                currectMove = currectMove == "X" ? "O" : "X";
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: index >= 3
                        ? BorderSide(
                            color: Colors.black,
                            width: borderWidth,
                          )
                        : BorderSide.none,
                    right: index % 3 != 2
                        ? BorderSide(
                            color: Colors.black,
                            width: borderWidth,
                          )
                        : BorderSide.none)),
            child: Center(
              child: !checkIfEmpty(
                      spots: context.read<Offline1V1ModeCubit>().spots,
                      index: index)
                  ? (context.read<Offline1V1ModeCubit>().spots[index] == "X"
                      ? XSymbol()
                      : OSymbol())
                  : SizedBox(),
            ),
          ),
        );
      },
    );
  }
}

bool checkIfEmpty({required Map<int, String> spots, required int index}) {
  return !spots.containsKey(index);
}
