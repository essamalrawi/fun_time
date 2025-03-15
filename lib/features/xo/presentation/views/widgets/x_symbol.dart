import 'package:flutter/material.dart';

class XSymbol extends StatelessWidget {
  const XSymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(40, 40),
      painter: XSymbolPainter(),
    );
  }
}

class XSymbolPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final borderPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    final xPaint = Paint()
      ..color = Color(0xffFE585E)
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    // Draw black border
    canvas.drawLine(
      Offset(0, 0),
      Offset(size.width, size.height),
      borderPaint,
    );
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, 0),
      borderPaint,
    );

    // Draw red "X" (Slightly smaller stroke)
    canvas.drawLine(
      Offset(0, 0),
      Offset(size.width, size.height),
      xPaint,
    );
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, 0),
      xPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
