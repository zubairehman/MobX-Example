import 'package:flutter/material.dart';
import 'package:mobx_example_app/user_info/model/user_info.dart';
import 'package:provider/provider.dart';

class UserDetailsPage extends StatelessWidget {
  final title;

  UserDetailsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //store
    final _userInfo = Provider.of<UserInfo>(context);

    return Scaffold(
      appBar: AppBar(title: Text('User Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello,',
              style: Theme.of(context).textTheme.headline,
            ),
            Text(_userInfo.fullName),
            Text(_userInfo.email),
          ],
        ),
      ),
    );
  }
}
