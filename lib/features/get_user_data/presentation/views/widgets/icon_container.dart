import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xfff6e58d),
      ),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffbe76),
            borderRadius: BorderRadius.circular(15),
          ),
          width: 40,
          height: 40,
          child: Icon(
            icon,
            color: Colors.white,
          )),
    );
  }
}
