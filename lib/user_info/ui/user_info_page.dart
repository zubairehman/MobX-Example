import 'package:flutter/material.dart';
import 'package:mobx_example_app/user_info/model/user_info.dart';
import 'package:mobx_example_app/user_info/ui/user_details_page.dart';
import 'package:provider/provider.dart';

class UserInfoPage extends StatefulWidget {
  UserInfoPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    print("rebuild gets called");

    //userInfo store
    final _userInfo = Provider.of<UserInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.person_pin,
                  size: 200.0,
                  color: Colors.lightBlue,
                ),
                Padding(padding: EdgeInsets.only(top: 40.0)),
                TextFormField(
                  controller: _firstNameController,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    hintText: 'Enter first name',
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  controller: _lastNameController,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(hintText: 'Enter last name'),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  controller: _emailController,
                  textDirection: TextDirection.ltr,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Enter email'),
                ),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                MaterialButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    _userInfo.firstName = _firstNameController.text;
                    _userInfo.lastName = _lastNameController.text;
                    _userInfo.email = _emailController.text;

                    //take user to next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserDetailsPage()),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
