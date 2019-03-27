import 'package:mobx/mobx.dart';

class Counter implements Store {
  //action
  Action increment;

  //Observable
  final _value = Observable(0);

  Counter() {
    increment = Action(_increment);
  }

  //setter/getters
  int get value => _value.value;

  set value(int newValue) => _value.value = newValue;

  //action method
  void _increment() {
    _value.value++;
    print(_value.value);
  }
}
