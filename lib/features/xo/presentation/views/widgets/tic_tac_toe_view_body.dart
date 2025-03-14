import 'package:flutter/material.dart';

class TicTacToeViewBody extends StatelessWidget {
  const TicTacToeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.8,
            height: 330,
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(9, (index) {
                const double borderWidth = 10.0;

                Border border = Border(
                  top: index >= 3
                      ? const BorderSide(
                          color: Colors.black, width: borderWidth)
                      : BorderSide.none,
                  right: index % 3 != 2
                      ? const BorderSide(
                          color: Colors.black, width: borderWidth)
                      : BorderSide.none,
                );

                return Container(
                  decoration: BoxDecoration(
                    border: border,
                  ),
                  child: XContainerTTicTacToe(),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class XContainerTTicTacToe extends StatelessWidget {
  const XContainerTTicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 10,
        height: 10,
        color: const Color.fromARGB(255, 172, 133, 133),
      ),
    );
  }
}
