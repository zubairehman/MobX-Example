import 'package:flutter/material.dart';
import 'package:mobx_example_app/counter_example/ui/class1.dart';
import 'package:mobx_example_app/user_info/ui/user_info_page.dart';

class Example {
  Example(
      {@required this.title,
        @required this.description,
        @required this.path,
        @required this.widgetBuilder});

  final WidgetBuilder widgetBuilder;
  final String path;
  final String title;
  final String description;
}

final List<Example> examples = [
  Example(
    title: 'Counter',
    description: 'The classic Counter that can be incremented.',
    path: '/counter',
    widgetBuilder: (_) => Class1(title: 'Counter Example',),
  ),
  Example(
    title: 'User Info',
    description: 'MobX demo using user info store',
    path: '/multi-counter',
    widgetBuilder: (_) => UserInfoPage(title: 'User Info Example'),
  ),
];