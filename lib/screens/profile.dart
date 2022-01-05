import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kleyboardshop/widgets/bottom_menu_bar.dart';


class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomMenuBar() ,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaRgaPKQAjTUszrH8Bdkuf_U04Pzje_BkSvw&usqp=CAU"),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    alignment: Alignment(0.0, 5.0),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                      radius: 65.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Text(
                "Anh Tân",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},

                    child: Ink(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 120.0,
                          maxHeight: 90.0,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Being Transported",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},

                    child: Ink(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 120.0,
                          maxHeight: 90.0,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Recently Viewed",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
