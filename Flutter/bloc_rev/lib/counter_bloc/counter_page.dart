import 'package:bloc_rev/counter_bloc/counter_bloc.dart';
import 'package:bloc_rev/counter_bloc/counter_event.dart';
import 'package:bloc_rev/counter_bloc/counter_state.dart';
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
          if(state.height==120){
            const snackbar=SnackBar(content: Text('Conatiner height is 120'),
            backgroundColor: Colors.black,);
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
                  return Container(
                    height: state.height,
                    width: 100,
                    color: Colors.blueGrey,
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(IncreaseHeight());
                          },
                          icon: const Icon(Icons.add)),
                      IconButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(DecreaseHeight());
                          },
                          icon: const Icon(Icons.remove)),
                      IconButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(ResetHeight());
                          },
                          icon: const Icon(Icons.restore)),
                    ],
                  );
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
