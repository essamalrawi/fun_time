import 'package:flutter/material.dart';
import 'package:fun_time/features/splash_view/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SplashViewBody(),
    );
  }
}
