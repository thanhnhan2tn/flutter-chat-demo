import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {
  CounterEvent() : super();
}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class CounterState {
  int value;

  CounterState(this.value): super();
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(int initialState) : super(CounterState(0));

  CounterState get initialState => CounterState(1);

  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      yield CounterState(state.value + 1);
    } else if (event is Decrement) {
      yield CounterState(state.value - 1);
    }
  }
}