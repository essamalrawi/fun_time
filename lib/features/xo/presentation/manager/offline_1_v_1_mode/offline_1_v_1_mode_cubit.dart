import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'offline_1_v_1_mode_state.dart';

class Offline1V1ModeCubit extends Cubit<Offline1V1ModeState> {
  Offline1V1ModeCubit() : super(Offline1V1ModeInitial());
  int xScore = 0, oScore = 0;
  Map<int, String> spots = {};

  updateX() {
    xScore += 1;
  }

  updateY() {
    oScore += 1;
  }

  clearSpots() {
    // xScore = 0;
    // oScore = 0;
    spots.clear();
  }

  bool isGameOngoing() {
    if (checkWinner("X") || checkWinner("O")) {
      clearSpots();
      Offline1V1ModeGameUpdate();
      return false;
    }
    if (spots.length == 9 || spots.containsValue("")) {
      clearSpots();
      Offline1V1ModeGameUpdate();
      return false;
    }
    Offline1V1ModeGameUpdate();
    return spots.length < 9 || spots.containsValue("");
  }

  bool checkWinner(String player) {
    if ((spots[0] == player && spots[1] == player && spots[2] == player) ||
        (spots[3] == player && spots[4] == player && spots[5] == player) ||
        (spots[6] == player && spots[7] == player && spots[8] == player) ||

        // Columns
        (spots[0] == player && spots[3] == player && spots[6] == player) ||
        (spots[1] == player && spots[4] == player && spots[7] == player) ||
        (spots[2] == player && spots[5] == player && spots[8] == player) ||

        // Diagonals
        (spots[0] == player && spots[4] == player && spots[8] == player) ||
        (spots[2] == player && spots[4] == player && spots[6] == player)) {
      player == "X" ? xScore += 1 : oScore += 1;

      return true;
    }
    return false;
  }
}
