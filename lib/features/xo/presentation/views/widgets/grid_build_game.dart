import 'package:flutter/material.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/o_symbol.dart';
import 'package:fun_time/features/xo/presentation/views/widgets/x_symbol.dart';

class GridBuildGame extends StatelessWidget {
  const GridBuildGame({super.key});

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
          onTap: () {},
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
              child: index % 3 != 1 ? XSymbol() : OSymbol(),
            ),
          ),
        );
      },
    );
  }
}
