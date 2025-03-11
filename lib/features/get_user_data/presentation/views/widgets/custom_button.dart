import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';
import 'package:fun_time/features/home/presentation/views/home_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
          elevation: 0,
          backgroundColor: AppColors.secondPrimaryColor,
        ),
        onPressed: () {
          Navigator.pushNamed(context, HomeView.routeName);
        },
        child: Text(
          'Next',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ));
  }
}
