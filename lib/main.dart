import 'package:flutter/material.dart';
import 'package:password_manager/pages/home.dart';
import 'package:password_manager/pages/password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {'passwords': (_) => const PasswordPage()},
    );
  }
}
