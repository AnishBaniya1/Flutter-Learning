import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/pages/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Center(
        //is used to listen the changes in the provider and rebuild
        child: Consumer<Counter>(
          builder: (context, counter, child) {
            return Text(
              'Count:${counter.count}',
              style: TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().decrement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().reset();
            },
            child: Icon(Icons.refresh),
          ),
          SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().increment();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
