class CounterState {
  CounterState({required this.isContainer1Red,required this.isContainer2Blue,required this.containerHeight});
  bool isContainer1Red;
  bool isContainer2Blue;
  double containerHeight;

CounterState copyWith({bool? isContainer1Red,bool? isContainer2Blue,double? containerHeight}){
  return CounterState(
    isContainer1Red: isContainer1Red??this.isContainer1Red, 
    isContainer2Blue: isContainer2Blue??this.isContainer2Blue,
    containerHeight: containerHeight??this.containerHeight
    );
}

factory CounterState.initial(){
  return CounterState(
    isContainer1Red: false, 
    isContainer2Blue: false,
    containerHeight: 200
    );
}
}