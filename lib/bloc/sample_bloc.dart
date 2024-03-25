import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/sample_event.dart';
import 'package:flutter_application_1/bloc/sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      return emit(SampleState(count: state.count + 1));
    });

    on<Decrement>((event, emit) {
      return emit(SampleState(count: state.count--));
    });
  }
}
