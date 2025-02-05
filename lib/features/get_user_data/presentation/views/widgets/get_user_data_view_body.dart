import 'package:flutter/material.dart';

import 'get_name_text_form_field.dart';

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
              SizedBox(height: 30),
              SelectPicWidget(),
            ]),
      ),
    );
  }
}

class SelectPicWidget extends StatelessWidget {
  const SelectPicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
