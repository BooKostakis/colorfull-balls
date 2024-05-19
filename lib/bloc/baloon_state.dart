part of 'baloon_bloc.dart';

@freezed
class BaloonState with _$BaloonState {
  factory BaloonState.initial() = BaloonStateInitial;
  factory BaloonState.sucsess(
      {@Default(1) int colorQuantity,
      @Default(1) int ballsQuantity}) = BaloonStateSucsess;
}
