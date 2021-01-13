import 'package:flutter/material.dart';
import 'package:flutter_app/modules/counter/widgets/counter_number.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/counter_class_bloc.dart';
import 'package:flutter_app/config/foodude_icons.dart';
// import 'blocs/counter_bloc.dart';
// import 'models/counter_event.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // int _counter = 0;

  // void _incrementCounter(counterBloc) {
  //   // setState(() => _counter++);
  //   counterBloc.add(CounterEvent.increment);
  // }

  // void _decrementCounter(counterBloc) {
  //   // setState(() => _counter--);
  //   counterBloc.add(CounterEvent.decrement);
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    // final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterNumber(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.red,
                  child: Text(
                    "Decrement Counter",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // counterBloc.add(CounterEvent.decrement);
                    BlocProvider.of<CounterBloc>(context, listen: false).add(Decrement());
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Increment Counter",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // counterBloc.add(CounterEvent.increment);
                    BlocProvider.of<CounterBloc>(context, listen: false).add(Increment());
                  },
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: Icon(FoodudeIcon.Bakery1),
      ),
    );
  }
}
