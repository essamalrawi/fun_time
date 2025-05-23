import 'package:flutter/material.dart';
import 'package:fun_time/core/widgets/custom_button_navigation_bar.dart';
import 'package:fun_time/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:fun_time/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtonNavigationBar(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), child: CustomAppBar()),
      body: HomeViewBody(),
    );
  }
}
