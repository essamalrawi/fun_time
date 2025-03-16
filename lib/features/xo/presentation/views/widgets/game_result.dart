import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_time/features/xo/presentation/manager/offline_1_v_1_mode/offline_1_v_1_mode_cubit.dart';

class GameResult extends StatelessWidget {
  const GameResult({super.key});

  @override
  Widget build(BuildContext context) {
    const double fontWidth = 17;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff764e50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "YOU",
                  style: TextStyle(
                      color: Color(0xffFC9983),
                      fontWeight: FontWeight.w900,
                      fontSize: fontWidth,
                      fontFamily: "Vinpnago"),
                ),
                Text(
                  context.read<Offline1V1ModeCubit>().xScore.toString(),
                  style: TextStyle(
                      color: Color(0xffFC9983),
                      fontWeight: FontWeight.w900,
                      fontSize: fontWidth,
                      fontFamily: "Vinpnago"),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "VS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 253, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: fontWidth,
                      fontFamily: "Vinpnago"),
                ),
                Container(
                  width: 35,
                  height: 4,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text(
                  "BOT",
                  style: TextStyle(
                      color: Color(0xff00B4EF),
                      fontWeight: FontWeight.w900,
                      fontSize: fontWidth,
                      fontFamily: "Vinpnago"),
                ),
                Text(
                  context.read<Offline1V1ModeCubit>().oScore.toString(),
                  style: TextStyle(
                      color: Color(0xff00B4EF),
                      fontWeight: FontWeight.w900,
                      fontSize: fontWidth,
                      fontFamily: "Vinpnago"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
