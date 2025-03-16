import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'offline_1_v_1_mode_state.dart';

class Offline1V1ModeCubit extends Cubit<Offline1V1ModeState> {
  Offline1V1ModeCubit() : super(Offline1V1ModeInitial());
}
