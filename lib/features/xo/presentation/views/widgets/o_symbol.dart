import 'package:flutter/material.dart';

class OSymbol extends StatelessWidget {
  const OSymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xff00B4EF),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Color(0xffFC9983),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
