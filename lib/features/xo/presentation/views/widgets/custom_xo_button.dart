import 'package:flutter/material.dart';

class CustomXoButton extends StatelessWidget {
  const CustomXoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            Icons.arrow_back,
            color: Color(0xffD38BAD),
            size: 35,
          ),
        ));
  }
}
