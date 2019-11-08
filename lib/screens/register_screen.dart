import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validators;

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: size.height,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: size.width * 0.9,
                        child: Column(
                          // textos de bienvenida
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Track down your money',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'and never lose a single coin again',
                              style: TextStyle(fontSize: 20, letterSpacing: 1),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Username"),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'The Name field is required';
                                }

                                return null;
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: "Email"),
                              validator: (value) {
                                if (!validators.isEmail(value)) {
                                  return 'You must provide a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                                decoration:
                                    InputDecoration(labelText: "Password")),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: <Widget>[
                                RaisedButton(
                                  child: Text('CREATE ACCOUNT'),
                                  onPressed: () {},
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Already have an account?',
                                    ),
                                    SizedBox(
                                      width: 0.5,
                                    ),
                                    FlatButton(
                                      child: Text('Login!'),
                                      padding: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
