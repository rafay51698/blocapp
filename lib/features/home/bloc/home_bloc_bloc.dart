import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeInitialState(count: 0)) {
    on<HomeIncrementEvent>(homeIncrementEvent);
  }

  FutureOr<void> homeIncrementEvent(
      HomeIncrementEvent event, Emitter<HomeBlocState> emit) {
    print(state.count);
    state.count++;
    print(state.count);
    emit(HomeIncrementState(count: state.count));
  }
}
