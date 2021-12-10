import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 70),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 31),
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children:  [
                    Container(
                        margin: const EdgeInsets.only(top: 40,right: 220),
                        child: (
                          Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 3,
                            ),
                          )
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Your email',
                                      fillColor: Color(0xfff3f3f4),
                                      filled: true))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Your password',
                                      fillColor: Color(0xfff3f3f4),
                                      filled: true))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 108, vertical: 20),
                          child: Text(
                              'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25,),
                          ),
                        )
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
