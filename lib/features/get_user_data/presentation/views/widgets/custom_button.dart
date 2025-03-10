import 'package:flutter/material.dart';
import 'package:fun_time/features/home/presentation/views/home_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xfff6e58d),
        borderRadius: BorderRadius.circular(35),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
            elevation: 0,
            backgroundColor: Color(0xffffbe76),
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomeView.routeName);
          },
          child: Text(
            'Next',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
    );
  }
}
