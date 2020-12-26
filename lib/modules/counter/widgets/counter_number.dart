import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_app/modules/counter/blocs/counter_class_bloc.dart';
// import 'package:flutter_app/modules/counter/blocs/counter_bloc.dart';

class CounterNumber extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState> (
        builder: (context, state) {
          return Text(
            '${state.value}',
            style: Theme.of(context).textTheme.headline4,
          );
        }
    );
  }
}
