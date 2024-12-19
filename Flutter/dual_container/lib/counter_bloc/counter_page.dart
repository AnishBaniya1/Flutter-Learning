import 'package:dual_container/counter_bloc/counter_bloc.dart';
import 'package:dual_container/counter_bloc/counter_event.dart';
import 'package:dual_container/counter_bloc/counter_state.dart';
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
          if(state.containerHeight==250){
           const snackbar=SnackBar(content: Text('Container Height is 250'));
           ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Dual Container'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<CounterBloc, CounterState>(
                    buildWhen: (previous, current) =>
                        previous.isContainer1Red != current.isContainer1Red,
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<CounterBloc>()
                              .add(ContainerOneTappedEvent());
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          color:
                              state.isContainer1Red ? Colors.red : Colors.green,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<CounterBloc, CounterState>(
                    buildWhen: (p, c) =>
                        p.isContainer2Blue != c.isContainer2Blue,
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<CounterBloc>()
                              .add(ContainerTwoTappedEvent());
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          color: state.isContainer2Blue
                              ? Colors.blue
                              : Colors.purple,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<CounterBloc, CounterState>(
                    buildWhen: (previous, current) =>
                        previous.containerHeight != current.containerHeight,
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context.read<CounterBloc>().add(IncreaseHeight());
                        },
                        child: Container(
                          height: state.containerHeight,
                          width: 200,
                          color: Colors.black,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
