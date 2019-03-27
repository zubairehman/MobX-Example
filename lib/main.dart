import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/model/counter.dart';
import 'package:mobx_example_app/counter_example/ui/class1.dart';
import 'package:provider/provider.dart';

void main() {

  // Create your store as a final variable in a base Widget. This works better
  // with Hot Reload than creating it directly in the `build` function.
  final Counter _counter = Counter();

  runApp(
    Provider(
      value: _counter,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Class1(title: 'MobX Demo'),
    );
  }
}
