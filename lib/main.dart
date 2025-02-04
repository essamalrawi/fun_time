import 'package:flutter/material.dart';
import 'package:fun_time/core/utils/app_colors.dart';
import 'package:fun_time/features/splash_view/presentation/views/splash_view.dart';

import 'core/functions/on_generate_route.dart';

void main() {
  runApp(const FunTime());
}

class FunTime extends StatelessWidget {
  const FunTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
