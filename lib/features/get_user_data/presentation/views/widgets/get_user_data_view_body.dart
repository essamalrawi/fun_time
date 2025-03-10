import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'get_name_text_form_field.dart';
import 'select_pic_widget.dart';

class GetUserDataViewBody extends StatelessWidget {
  const GetUserDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              GetNameTextField(),
              SizedBox(height: 50),
              SelectPicWidget(),
              SizedBox(height: 100),
              CustomButton()
            ]),
      ),
    );
  }
}
