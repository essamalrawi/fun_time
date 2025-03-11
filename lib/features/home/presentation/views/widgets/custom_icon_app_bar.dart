import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SizedBox(
        width: 30,
        height: 24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.secondPrimaryColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 20,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.secondPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
