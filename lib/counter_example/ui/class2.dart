import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/model/counter_using_gen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Class2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get your store using .of() method
    final _counter = Provider.of<Counter>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Observer(
            builder: (context) {
              return Text(
                '${_counter.value}',
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
        ],
      ),
    );
  }
}
