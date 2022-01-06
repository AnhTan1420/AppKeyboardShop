// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:kleyboardshop/controller/chat.controller.dart';
import 'package:kleyboardshop/model/message.dart';
import 'package:kleyboardshop/screens/products_overview_screen.dart';
import 'package:kleyboardshop/widgets/bottom_menu_bar.dart';
// ignore: library_prefixes
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

  ChatController chatController = ChatController();
  @override
  void initState() {
    socket = IO.io(
        'http://192.168.1.14:3000',
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());
    // socket = IO.io('http://192.168.1.14:3000', <String, dynamic>{
    //   'transports': ['websocket'],
    // });

    socket.connect();
    setUpSocketListener();
    super.initState();
  }

  @override
  void dispose() {
    return super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      return super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: BottomMenuBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Obx(
              () => Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Connected user ${chatController.connectedUser}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            )),
            Expanded(
                flex: 9,
                // ignore: avoid_unnecessary_containers
                child: Obx(() => ListView.builder(
                    itemCount: chatController.chatMessages.length,
                    itemBuilder: (context, index) {
                      var currentItem = chatController.chatMessages[index];
                      // ignore: prefer_const_constructors
                      return MessageItem(
                        sentByMe: currentItem.sentByMe == socket.id,
                        message: currentItem.message,
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

  void sendMessage(String text) {
    var messageJson = {"message": text, "sentByMe": socket.id};
    socket.emit('message', messageJson);
    chatController.chatMessages.add(Message.fromJson(messageJson));
  }

  void setUpSocketListener() {
    socket.on('message-receive', (data) {
      // ignore: avoid_print
      print(data);
      chatController.chatMessages.add(Message.fromJson(data));
    });
    socket.on('connected-user', (data) {
      // ignore: avoid_print
      print(data);
      chatController.connectedUser.value = data;
    });
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.sentByMe, required this.message})
      : super(key: key);
  final bool sentByMe;
  final String message;

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
                Text(message,
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
