
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tatware/icons/my_flutter_app_icons.dart';
import 'package:tatware/model/user_model.dart';

class ChatSCreen extends StatefulWidget {
  ChatSCreen({Key? key}) : super(key: key);

  TextEditingController? controller = TextEditingController();
  @override
  State<ChatSCreen> createState() => _ChatSCreenState();
}

class _ChatSCreenState extends State<ChatSCreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      

        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if(messages[index].messageType == "receiver")
                    
                                Row(children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundImage:
                                          AssetImage("assets/image/man.png"),
                                    ),
                                    
                                     Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? Colors.grey.shade200
                                  : Color(0xff16919B)),
                            ),
                            padding: EdgeInsets.all(16),
                            child: messages[index].messageType == "receiver"
                                ? 
                             
                                    Text(
                                      messages[index].messageContent,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: messages[index].messageType ==
                                                  "receiver"
                                              ? Colors.black
                                              : Colors.white),
                                    )
                                : Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: messages[index].messageType ==
                                                "receiver"
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                          ),
                        )
                        ),
                                  ]),
                                  
                                 if (messages[index].messageType == "sender")
                    Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: ( Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ( Color(0xff16919B)),
                            ),
                            padding: EdgeInsets.all(16),
                            child: messages[index].messageType == "receiver"
                                ? 
                               
                                    Text(
                                      messages[index].messageContent,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:  Colors.white),
                                    )
                                : Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:  Colors.white),
                                  ),
                          ),
                        )
                        ),
                  ],
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        // decoration: BoxDecoration(
                        //   color: Colors.black,
                        //   borderRadius: BorderRadius.circular(30),
                        // ),
                        child: Icon(
                          Icons.blur_circular,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        controller: widget.controller,
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          messages.add(
                            ChatMessage(
                                messageContent: widget.controller!.text,
                                messageType: "sender"),
                          );
                        });
                        widget.controller!.clear();
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Colors.blue,
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
