import 'package:flutter/material.dart';

import 'widgets/get_user_data_view_body.dart';

class GetUserDataView extends StatelessWidget {
  const GetUserDataView({super.key});
  static const String routeName = 'get_user_data';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: GetUserDataViewBody()),
    );
  }
}
