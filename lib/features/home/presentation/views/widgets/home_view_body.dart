import 'package:flutter/material.dart';
import 'package:fun_time/features/home/presentation/views/widgets/games_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15,),
      child: CustomScrollView(
        slivers: [GamesGridView()],
      ),
    );
  }
}
