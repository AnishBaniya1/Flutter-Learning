import 'package:bloc_con/counter_bloc/counter_event.dart';
import 'package:bloc_con/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterState(color: Colors.black)){
    on<ChangeToRed>((event, emit) {
      emit(CounterState(color: Colors.red));
    },
    );
    on<ChangeToGreen>((event, emit) {
      emit(CounterState(color: Colors.green));
    },
    );
    on<ResetColor>((event, emit){
      emit(CounterState(color: Colors.black));
    },);
  }
}