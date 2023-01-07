import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tatware/component/component.dart';
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          if (messages[index].messageType == "receiver")
                            Row(children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffD8D8D8),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/image/GetStart1/chatrepot.png"),
                                    )),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width - 40,
                                ),
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 14,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    child: Align(
                                      alignment: (messages[index].messageType ==
                                              "receiver"
                                          ? Alignment.topLeft
                                          : Alignment.topRight),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: (messages[index].messageType ==
                                                  "receiver"
                                              ? Colors.grey.shade200
                                              : Color(0xff16919B)),
                                        ),
                                        padding: EdgeInsets.all(16),
                                        child: messages[index].messageType ==
                                                "receiver"
                                            ? Text(
                                                messages[index].messageContent,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: messages[index]
                                                                .messageType ==
                                                            "receiver"
                                                        ? Colors.black
                                                        : Colors.white),
                                              )
                                            : Text(
                                                messages[index].messageContent,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: messages[index]
                                                                .messageType ==
                                                            "receiver"
                                                        ? Colors.black
                                                        : Colors.white),
                                              ),
                                      ),
                                    )),
                              ),
                            ]),
                          if (messages[index].messageType == "sender")
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width - 40,
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.e,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          left: 14,
                                          right: 14,
                                          top: 10,
                                          bottom: 10),
                                      child: Align(
                                        alignment: (Alignment.topRight),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: (Color(0xff16919B)),
                                          ),
                                          padding: EdgeInsets.all(16),
                                          child: messages[index].messageType ==
                                                  "receiver"
                                              ? Text(
                                                  messages[index]
                                                      .messageContent,
                                                  maxLines: 4,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                )
                                              : Text(
                                                  messages[index]
                                                      .messageContent,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                        ),
                                      )),
                                  Image(
                                    image: AssetImage(
                                      'assets/image/GetStart1/check1.png',
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: const [
                        chatWidget(
                          Iconcolor: Colors.white,
                          text: 'Security',
                          color: Color(0xff16919B),
                        ),
                        chatWidget(
                          Iconcolor: Color(0xffCFD9DE),
                          text: 'Supply chain',
                          color: Color(0xffCFD9DE),
                        ),
                        chatWidget(
                          Iconcolor: Color(0xffCFD9DE),
                          text: 'Information Techology',
                          color: Color(0xffCFD9DE),
                        ),
                        chatWidget(
                          Iconcolor: Color(0xffCFD9DE),
                          text: 'Human Resource',
                          color: Color(0xffCFD9DE),
                        ),
                        chatWidget(
                          Iconcolor: Colors.white,
                          text: 'Business Research',
                          color: Color(0xff16919B),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    'Say Done, Or Press Send To Apply',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Divider(
                  //   color: Colors.amber,
                  //   height: 20,
                  // ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                // padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 70,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Divider(
                            thickness: 2,
                            height: 10,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        // minWidth: size.width,
                                        // maxWidth: size.width,
                                        minHeight: 25.0,
                                        maxHeight: 135.0,
                                      ),
                                      // color: ,
                                      // width: MediaQuery.of(context).size.width - 71,
                                      child: Scrollbar(
                                        child: Card(
                                          // margin: EdgeInsets.only(
                                          //     left: 2, right: 2, bottom: 2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: TextFormField(
                                            controller: widget.controller,
                                            // focusNode: FocusNode,

                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: 5,
                                            minLines: 1,
                                            onChanged: (value) {
                                              //           setState(() {
                                              //   messages.add(
                                              //     ChatMessage(
                                              //         messageContent: widget.controller!.text,
                                              //         messageType: "sender"),
                                              //   );
                                              // });
                                              // widget.controller!.clear();
                                            },
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              // fillColor: Colors.grey,
                                              prefixIconColor: Colors.grey,
                                              fillColor: Colors.white38,

                                              filled: true,

                                              hintText: "Type a message",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              suffixIcon: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: ImageIcon(
                                                  AssetImage(
                                                      'assets/image/GetStart1/Voice2.png'),
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              prefixIcon: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: ImageIcon(
                                                    AssetImage(
                                                        'assets/image/startScreen/earth1.png'),
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )

                                      //////////////////////////////

                                      ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 10),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      messages.add(
                                        ChatMessage(
                                            messageContent:
                                                widget.controller!.text,
                                            messageType: "sender"),
                                      );
                                    });
                                    widget.controller!.clear();
                                  },
                                  icon: ImageIcon(
                                    AssetImage(
                                        'assets/image/GetStart1/Send.png'),
                                    color: Color(0xff16919B),
                                    size: 30,
                                  ),
                                ),
                              ),
                              //    FloatingActionButton(
                              //     backgroundColor: Colors.white,
                              //         onPressed: () {
                              //           setState(() {
                              //             messages.add(
                              //               ChatMessage(
                              //                   messageContent: widget.controller!.text,
                              //                   messageType: "sender"),
                              //             );
                              //           });
                              //           widget.controller!.clear();
                              //         },
                              //         child:  const Padding(
                              //    padding: const EdgeInsets.only(right: 30,top: 10),
                              //    child: ImageIcon(AssetImage('assets/image/GetStart1/Send.png'),
                              //    color: Color(0xff16919B),
                              //    ),
                              //         ),

                              //  ),
                              // ElevatedButton(
                              //     style: ElevatedButton.styleFrom(
                              //       primary: Color.fromARGB(255, 116, 98, 195),
                              //       shape: CircleBorder(),
                              //       padding: EdgeInsets.all(12),
                              //     ),
                              //     onPressed: () {
                              //       // SocialLoginCubit.get(context).sendImageGallery(
                              //       //     recevierId: widget.uid!,
                              //       //     dateTime: dateFromTimeStamp.toString(),
                              //       //     text: chatControler.text);
                              //       // chatControler.clear();
                              //       Navigator.pop(context);
                              //     },
                              //     child: Icon(
                              //       Icons.send,
                              //       color: Colors.white,
                              //       size: 25,
                              //     )),
                            ],
                          ),

                          // Positioned(
                          //   bottom: 0,
                          //   child: Container(
                          //     color: Colors.black38,
                          //     width: MediaQuery.of(context).size.width,
                          //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          //     child: Flexible(
                          //       child: ConstrainedBox(
                          //         constraints: BoxConstraints(
                          //           // minWidth: size.width,
                          //           // maxWidth: size.width,
                          //           minHeight: 25.0,
                          //           maxHeight: 135.0,
                          //         ),
                          //         child: Scrollbar(
                          //           child: TextField(
                          //             cursorColor: Colors.red,
                          //             // keyboardType: TextInputType.multiline,
                          //             // maxLines: null,
                          //             // controller: chatControler,
                          //             decoration: InputDecoration(
                          //                 border: InputBorder.none,
                          //                 contentPadding: EdgeInsets.only(
                          //                     top: 2.0,
                          //                     left: 13.0,
                          //                     right: 13.0,
                          //                     bottom: 2.0),
                          //                 hintText: "Type your message",
                          //                 hintStyle: TextStyle(
                          //                   color: Colors.grey,
                          //                 ),
                          //                 suffixIcon: CircleAvatar(
                          //                   radius: 27,
                          //                   backgroundColor: Colors.tealAccent[700],
                          //                   child: IconButton(
                          //                     onPressed: () {
                          //                       // SocialLoginCubit.get(context).sendImageGallery(
                          //                       //     recevierId: uid,
                          //                       //     dateTime:
                          //                       //         dateFromTimeStamp.toString(),
                          //                       //     text: chatControler.text);
                          //                       // Navigator.pop(context);
                          //                     },
                          //                     icon: Icon(Icons.check),
                          //                     color: Colors.white,
                          //                   ),
                          //                 )),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Container(
                    //     height: 30,
                    //     width: 30,
                    //     // decoration: BoxDecoration(
                    //     //   color: Colors.black,
                    //     //   borderRadius: BorderRadius.circular(30),
                    //     // ),
                    //     child: Icon(
                    //       Icons.bluetooth,
                    //       color: Colors.black,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 15,
                    // ),

                    // Expanded(
                    //   child: TextField(
                    //     controller: widget.controller,
                    //     decoration: InputDecoration(
                    //         hintText: "Write message...",
                    //         hintStyle: TextStyle(color: Colors.black54),
                    //         border: InputBorder.none),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 15,
                    // ),
                    // FloatingActionButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       messages.add(
                    //         ChatMessage(
                    //             messageContent: widget.controller!.text,
                    //             messageType: "sender"),
                    //       );
                    //     });
                    //     widget.controller!.clear();
                    //   },
                    //   child: Icon(
                    //     Icons.send,
                    //     color: Colors.white,
                    //     size: 18,
                    //   ),
                    //   backgroundColor: Colors.blue,
                    //   elevation: 0,
                    // ),
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
