
import 'package:dual_container/counter_bloc/counter_event.dart';
import 'package:dual_container/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(CounterState.initial()) {
    //Container One Tapped Event
    on<ContainerOneTappedEvent>(
      (event, emit) {
        emit(state.copyWith(isContainer1Red: !state.isContainer1Red));
      },
    );

    //Container Two Tapped Event

    on<ContainerTwoTappedEvent>(
      (event, emit) {
        emit(state.copyWith(isContainer2Blue: !state.isContainer2Blue));

      },
    );
    on<IncreaseHeight>((event, emit) {
      emit(state.copyWith(containerHeight: state.containerHeight+10));
    },);
  }
}