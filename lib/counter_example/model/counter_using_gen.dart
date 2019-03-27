import 'package:mobx/mobx.dart';

// Include generated file
part 'counter_using_gen.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase implements Store {
  @observable
  int _value = 0;

  //getter/setter
  get value => _value;

  @action
  void increment() {
    _value++;
  }

}