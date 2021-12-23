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
            Navigator.of(context)
                .pushReplacementNamed(LoginScreen.routeName);
          },
          child:  Icon(
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
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 25, left: 25),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: const Text(
                            'Forgot-password',
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
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              InputTextWidget(
                                  controller: _emailController,
                                  labelText: "Email",
                                  hintText: "Your email",
                                  obscureText: false,
                                  keyboardType: TextInputType.emailAddress),
                              const SizedBox(
                                height: 50.0,
                              ),
                              Container(
                                height: 55.0,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      print("Submit tapping");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    elevation: 0.0,
                                    minimumSize: Size(screenWidth, 100),
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 30),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                    ),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        color: const Color(
                                            0xff1E5128), // Color(0xffF05945),
                                        borderRadius:
                                        BorderRadius.circular(12.0)),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Submit",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        height: 50.0,
                        color: Colors.white,
                        child: Center(
                            child: Wrap(
                              children: [
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        print("sign up tapped");
                                        Navigator.of(context)
                                            .pushReplacementNamed(LoginScreen.routeName);
                                      },
                                      child: Text(
                                        "Back to Log-in",
                                        style: TextStyle(
                                          color: Colors.blue[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    )),
                              ],
                            )),
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