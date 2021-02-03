
import 'dart:async';
import 'package:state_management/model/event.dart';

class BlocCounter
{
  int _counter =0;
  final _counterStateController  = StreamController<int>();

  StreamSink<int> get _inCounter =>_counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController =StreamController<EventCounter>();

  Sink<EventCounter> get counterEventSink=>_counterEventController.sink;

  BlocCounter(){
    _counterEventController.stream.listen((_mapEventtoState));
  }
  void _mapEventtoState(EventCounter event)
  {
    if(event is InCrementCounter)
      _counter++;
    else
      _counter--;

    _inCounter.add(_counter);
  }
  void dispose()
  {
    _counterEventController.close();
    _counterStateController.close();
  }
}

