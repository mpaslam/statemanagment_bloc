class SampleState {
   int count;

  SampleState({required this.count});
}

class InitialState extends SampleState {
  InitialState() : super(count: 0);
}
