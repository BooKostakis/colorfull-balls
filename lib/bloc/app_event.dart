part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  factory AppEvent.settingsCleared() = SettingsCleared;
  factory AppEvent.settingsChanged(ResultPage ballsPainted) = SettingsChanged;
}
