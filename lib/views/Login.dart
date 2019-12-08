import 'package:flutter/material.dart';
import './dashboard.dart';
class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
           
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
                ),
                
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            RaisedButton(child: Text("LOGIN"), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard_page(),))}, padding: EdgeInsets.fromLTRB(10, 10, 10, 10), ),
          ],
        ),
      ),
    );
  }
}