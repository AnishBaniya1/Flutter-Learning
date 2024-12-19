import 'package:bloc_rev/counter_bloc/counter_event.dart';
import 'package:bloc_rev/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterState(height: 100)){
    on<IncreaseHeight>((event, emit) {
      emit(CounterState(height:state.height+5));
    },
    );
    on<DecreaseHeight>((event, emit) {
      emit(CounterState(height:state.height-5));
    },
    );
    on<ResetHeight>((event, emit) {
      emit(CounterState(height:100));
    },
    );
  }
}