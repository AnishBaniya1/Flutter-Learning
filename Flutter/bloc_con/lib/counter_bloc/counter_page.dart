import 'package:bloc_con/counter_bloc/counter_bloc.dart';
import 'package:bloc_con/counter_bloc/counter_event.dart';
import 'package:bloc_con/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Container Bloc'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration:  BoxDecoration(
                    color:state.color,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            context
                            .read<CounterBloc>()
                            .add(ChangeToRed());
                          },
                          child: const Text('Red')),
                      const SizedBox(width: 20),
                      ElevatedButton(
                          onPressed: () {
                            context
                            .read<CounterBloc>()
                            .add(ChangeToGreen());
                          },
                          child: const Text('Green')),
                      const SizedBox(width: 20),
                      ElevatedButton(
                          onPressed: () {
                            context
                            .read<CounterBloc>()
                            .add(ResetColor());
                          },
                          child: const Text('Reset')),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
