import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'baloon_state.dart';
part 'baloon_event.dart';
part 'baloon_bloc.freezed.dart';

class BaloonBloc extends Bloc<BaloonEvent, BaloonState> {
  BaloonBloc() : super(BaloonState.initial()) {
    on<Updated>(_updated);
    on<Cleared>(_cleared);
  }
  void _updated(Updated event, Emitter<BaloonState> emit) {
    emit(BaloonState.sucsess(
        colorQuantity: event.colorQuantity,
        ballsQuantity: event.ballsQuantity));
  }

  void _cleared(Cleared event, Emitter<BaloonState> emit) {
    emit(BaloonState.initial());
  }
}
