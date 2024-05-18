part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState.ballsCreated({ResultPage ballsPainted}) =
      AppStateBallsCreated;
  factory AppState.clean() = AppStateClean;
}
