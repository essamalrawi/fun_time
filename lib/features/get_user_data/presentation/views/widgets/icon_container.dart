import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.secondPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 40,
        height: 40,
        child: Icon(
          icon,
          color: Colors.white,
        ));
  }
}
