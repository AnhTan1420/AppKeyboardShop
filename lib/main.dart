import 'package:flutter/material.dart';
import 'package:kleyboardshop/Screen/signup_screen.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:kleyboardshop/Screen/signin_screen.dart';
import 'package:kleyboardshop/Screen/homepage_screen.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      home: SignUp(),

    );
  }
}