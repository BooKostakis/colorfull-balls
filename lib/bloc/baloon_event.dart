part of 'baloon_bloc.dart';

@freezed
class BaloonEvent with _$BaloonEvent {
  factory BaloonEvent.updated(
      {required int colorQuantity, required int ballsQuantity}) = Updated;
  factory BaloonEvent.cleared() = Cleared;
}
