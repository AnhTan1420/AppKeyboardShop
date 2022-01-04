import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kleyboardshop/screens/signin_screen.dart';
import 'package:kleyboardshop/widgets/input_text_widget.dart';

class ForgotScreen extends StatefulWidget {
  ForgotScreen() : super();
  static const routeName = '/Forgot';
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<ForgotScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        //centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          // begin: Alignment.topRight,
          // end: Alignment.bottomLeft,
          colors: [
            Colors.green,
            Colors.lightGreen,
          ],
        )),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
