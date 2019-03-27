import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/model/counter_using_gen.dart';
import 'package:mobx_example_app/user_info/model/user_info.dart';
import 'package:mobx_example_app/user_info/ui/user_info_page.dart';
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
      title: 'MobX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserInfoPage(title: 'User Info'),
    );
  }
}
