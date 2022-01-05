// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static const routeName = '/ChatBox';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color purple = const Color(0xFF6c5ce7);
  Color black = const Color(0xFF191919);
  TextEditingController msgInputController = TextEditingController();
  late IO.Socket socket;

  @override
  void initState() {
    super.initState();
    connectServer();
  }

  void connectServer() {
    print('Function connectServer!!!');
    socket = IO.io(
        'http://localhost:4000',
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());
    socket.connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 9,
                // ignore: avoid_unnecessary_containers
                child: Container(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          // ignore: prefer_const_constructors
                          return MessageItem(
                            sentByMe: false,
                          );
                        }))),
            Expanded(
                child: Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(10),
                    color: Colors.black,
                    child: TextField(
                        // ignore: prefer_const_constructors
                        style: TextStyle(color: Colors.white),
                        cursorColor: purple,
                        controller: msgInputController,
                        // ignore: unnecessary_new
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              // ignore: prefer_const_constructors
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // ignore: prefer_const_constructors
                            focusedBorder: OutlineInputBorder(
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            suffixIcon: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      sendMessage(msgInputController.text);
                                      msgInputController.text = "";
                                    },
                                    icon: Icon(Icons.send, color: purple)))))))
          ],
        ),
      ),
    );
  }

  void sendMessage(String message) {
    var messageJson = {"message": message, "sentByMe": socket.id};
    socket.emit('message', messageJson);
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.sentByMe}) : super(key: key);
  final bool sentByMe;
  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    Color purple = Color(0xFF6c5ce7);
    Color black = Color(0xFF191919);
    Color white = Colors.white;
    return Align(
        alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: sentByMe ? purple : white,
          ),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text("Hello",
                    style: TextStyle(
                      color: sentByMe ? white : purple,
                      fontSize: 18,
                    )),
                SizedBox(width: 5),
                Text("0:00 AM",
                    style: TextStyle(
                        color: (sentByMe ? white : purple).withOpacity(0.7),
                        fontSize: 10)),
              ]),
        ));
  }
}