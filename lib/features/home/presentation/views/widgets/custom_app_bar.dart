import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';
import 'package:fun_time/features/home/presentation/views/widgets/custom_icon_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Spacer(),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              CustomAppBarIcon()
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
