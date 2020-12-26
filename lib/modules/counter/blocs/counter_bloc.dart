import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/modules/counter/models/counter_event.dart';


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    print(event);
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}