import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    Column(
                      // textos de bienvenida
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.09,
                        ),
                        Text(
                          'Welcome to',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, letterSpacing: 1),
                        ),
                        Text(
                          'Smart Coin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: "Email"),
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
                                  child: Text('LOGIN'),
                                  onPressed: () {},
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Dont you have an account?'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FlatButton(
                                      child: Text('Register now!'),
                                      padding: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/register');
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
