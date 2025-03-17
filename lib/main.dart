import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_time/core/services/custom_bloc_observer.dart';
import 'package:fun_time/core/utils/app_colors.dart';
import 'package:fun_time/features/splash_view/presentation/views/splash_view.dart';

import 'core/functions/on_generate_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  Bloc.observer = CustomBlocObserver();
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
        fontFamily: 'Fredoka',
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
