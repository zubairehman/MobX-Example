import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/model/counter.dart';
import 'package:mobx_example_app/counter_example/ui/class2.dart';
import 'package:provider/provider.dart';

class Class1 extends StatelessWidget {
  Class1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    //get your store using .of() method
    final _counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Class2(),
      floatingActionButton: FloatingActionButton(
        onPressed: _counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
