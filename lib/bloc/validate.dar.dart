
import 'dart:async';


class ValidateCounter {

  String name;
  String email;
  int phone;
  double password;

  final _counterStateController = StreamController();

  StreamSink<int> get _Counter => _counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<ValidateCounter>();

  Sink<ValidateCounter> get counterEventSink => _counterEventController.sink;


  ValidateCounter() {
    _counterEventController.stream.listen((_mapValidatetoState));
    // _counterEventController.stream.listen((_mapEmailState));
    // _counterEventController.stream.listen((_mapPhoneState));
    // _counterEventController.stream.listen((_mapPassState));
  }

  void _mapValidatetoState(ValidateCounter validateNameField)
  {

  }
// void _mapEmailState(ValidateCounter validateEmail)
// {
//
// }
//
// void _mapPhoneState(ValidateCounter validateTelephoneField)
// {
//
// }
//
// void _mapPassState(ValidateCounter validatePassword)
// {
//
//
// }
void dispose()
{
  _counterEventController.close();
  _counterStateController.close();
}
}

