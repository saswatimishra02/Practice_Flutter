import 'package:flutter/material.dart';
import './dashboard.dart';
import '../controllers/auth.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  var _formkey = GlobalKey<FormState>();
  String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Email Address"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter you email id';
                  }
                },
                onSaved: (value) {
                  username = value;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter you Password';
                  }
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  if (_formkey.currentState.validate()) {
                    _formkey.currentState.save();
                    print(username);
                    print(password);
                    Auth().login(username: username, password: password);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboar_page()),
                    );
                  } else {
                    return;
                  }
                },
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
