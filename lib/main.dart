import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/model/counter_using_gen.dart';
import 'package:mobx_example_app/examples.dart';
import 'package:mobx_example_app/user_info/model/user_info.dart';
import 'package:provider/provider.dart';

void main() {
  // Create your store as a final variable in a base Widget. This works better
  // with Hot Reload than creating it directly in the `build` function.
  final _counter = Counter();
  final _userInfo = UserInfo();

  runApp(
    Provider(
      value: _userInfo,
      child: Provider(
        value: _counter,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MobX Examples',
      initialRoute: '/',
      routes: {
        '/': (_) => ExampleList(),
      }..addEntries(examples.map((ex) => MapEntry(ex.path, ex.widgetBuilder))),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class ExampleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Flutter MobX Examples'),
      ),
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (_, int index) {
          final ex = examples[index];
          return ListTile(
            title: Text(ex.title),
            subtitle: Text(ex.description),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.pushNamed(context, ex.path),
          );
        },
      ));
}
