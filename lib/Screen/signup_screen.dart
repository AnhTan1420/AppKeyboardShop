import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment.topRight,
              // end: Alignment.bottomLeft,
              colors: [
                Colors.green,
                Colors.lightGreen,
              ],
            )
        ),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40, bottom: 25, left: 25),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: const Text(
                            'Sign-up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.vertical,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Column(
                          children: [
                            // Email filed
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                                  hintText: 'Your email',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.green)),
                                ),
                                obscureText: true,
                              ),
                            ),

                            // Name filed
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                                  hintText: 'Your name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.green)),
                                ),
                                obscureText: true,
                              ),
                            ),

                            // Password filed
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.green)),
                                ),
                                obscureText: true,
                              ),
                            ),

                            // Confirm password filed
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Confirm password',
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                                  hintText: 'Confirm password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.green)),
                                ),
                                obscureText: true,
                              ),
                            ),

                            // Button Sign up
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 10, bottom: 10),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
