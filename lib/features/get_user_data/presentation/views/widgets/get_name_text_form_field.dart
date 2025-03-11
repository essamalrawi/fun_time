import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';
import 'package:fun_time/features/get_user_data/presentation/views/widgets/custom_get_name_text_field.dart';

class GetNameTextField extends StatelessWidget {
  const GetNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.secondPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: CustomGetNameTextField(),
          ),
        ),
        SizedBox(
          width: 50,
          child: Icon(Icons.close, color: Colors.red),
        )
      ],
    );
  }
}
