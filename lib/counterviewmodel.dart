import 'dart:async';

class CounterViewModel {
  int counter = 0;
  StreamController<int> myStreamController = StreamController();
  late Stream<int> myCounterStream;
  late Sink mySink;

  CounterViewModel() {
    myCounterStream = myStreamController.stream.asBroadcastStream();
    mySink = myStreamController.sink;
    mySink.add(counter);
    print('initial value assigned');
  }

  void increase() {
    mySink.add(++counter);
    print('object: $counter');
  }

  void decrease() {
    mySink.add(--counter);
  }
}
