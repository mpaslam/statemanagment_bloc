import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/sample_bloc.dart';
import 'package:flutter_application_1/bloc/sample_event.dart';
import 'package:flutter_application_1/bloc/sample_state.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SampleBloc(),   //bloc provider use akkki
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Home(),
      ),
    );
  }
}

