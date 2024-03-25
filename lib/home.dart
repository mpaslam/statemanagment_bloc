import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/sample_bloc.dart';
import 'package:flutter_application_1/bloc/sample_event.dart';
import 'package:flutter_application_1/bloc/sample_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<SampleBloc, SampleState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',    //bloc builder use cheyth object ndaaakki call akkki
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<SampleBloc>().add(Increment());   //rand reethiyill call akkaaam
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}



