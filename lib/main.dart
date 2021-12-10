import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kleyboardshop/Screen/signin_screen.dart';
import 'package:kleyboardshop/Screen/homepage_screen.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),

    );
  }
}