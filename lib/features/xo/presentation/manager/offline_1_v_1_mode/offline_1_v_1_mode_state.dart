part of 'offline_1_v_1_mode_cubit.dart';

@immutable
sealed class Offline1V1ModeState {}

final class Offline1V1ModeInitial extends Offline1V1ModeState {}

final class Offline1V1ModeGameOnGoing extends Offline1V1ModeState {}

final class Offline1V1ModeGameIsEmpty extends Offline1V1ModeState {}

final class Offline1V1ModeGameIsTie extends Offline1V1ModeState {}

final class Offline1V1ModeGameIsWin extends Offline1V1ModeState {}
