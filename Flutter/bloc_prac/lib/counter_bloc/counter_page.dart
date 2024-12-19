import 'package:bloc_prac/counter_bloc/counter_bloc.dart';
import 'package:bloc_prac/counter_bloc/counter_event.dart';
import 'package:bloc_prac/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if(state.count==5){
            const snackbar= SnackBar(content: Text('Count is five'),
            backgroundColor: Colors.amber,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Counter Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Text(
                      state.count.toString(),
                      style: const TextStyle(
                        fontSize: 60,
                      ),
                    );
                  },
                ),
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterIncrementEvent());
                            },
                            icon: const Icon(Icons.add)),
                        IconButton(
                            onPressed: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterDecrementEvent());
                            },
                            icon: const Icon(Icons.remove)),
                        IconButton(
                            onPressed: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterResetEvent());
                            },
                            icon: const Icon(Icons.restart_alt)),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
