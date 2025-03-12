import 'package:flutter/material.dart';

class TicTacToeViewBody extends StatelessWidget {
  const TicTacToeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Stack(
          children: [
            CustomPaint(
              size: Size(250, 250),
              painter: GridPainter(),
            ),
          ],
        ))
      ],
    );
  }
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 12.0
      ..style = PaintingStyle.stroke;

    double third = size.width / 3;

    canvas.drawLine(Offset(third, 0), Offset(third, size.height), paint);
    canvas.drawLine(
        Offset(2 * third, 0), Offset(2 * third, size.height), paint);

    canvas.drawLine(Offset(0, third), Offset(size.width, third), paint);
    canvas.drawLine(Offset(0, 2 * third), Offset(size.width, 2 * third), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
