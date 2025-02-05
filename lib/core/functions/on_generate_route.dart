import 'package:flutter/material.dart';
import 'package:fun_time/features/home/presentation/views/home_view.dart';

import '../../features/get_user_data/presentation/views/get_user_data_view.dart';
import '../../features/splash_view/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case GetUserDataView.routeName:
      return MaterialPageRoute(builder: (context) => const GetUserDataView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
