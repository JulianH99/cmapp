import 'package:cmapp/screens/login_screen.dart';
import 'package:cmapp/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen() 
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Ubuntu',
          primaryColor: Colors.grey[900],
          accentColor: Colors.blue[800],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.grey[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              textTheme: ButtonTextTheme.primary),
          textTheme: TextTheme(
            button: TextStyle(
              fontSize: 16,
            ),
          )),
    );
  }
}
