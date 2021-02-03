import 'package:bille/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:bille/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // backgroundColor: Color.fromRGBO(15, 35, 61, 1.0),
        scaffoldBackgroundColor: AppTheme.primary,
        backgroundColor: AppTheme.primary,
        primaryColor: AppTheme.textwhiteE,
      ),
      home: LoginPage(),
    );
  }
}
