import 'package:flutter/material.dart';
import 'package:whatsapp_clone/appBar_action_icon.dart';

import '../chat_msg.dart';

class ChatContato extends StatefulWidget {
  final String contato;

  const ChatContato({this.contato});

  @override
  _ChatContatoState createState() => _ChatContatoState();
}

class _ChatContatoState extends State<ChatContato> {
  IconData floatingButtonIcon = Icons.mic;

  void textChanged(String value) {
    setState(() {
      floatingButtonIcon = value.length >= 1 ? Icons.send : Icons.mic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarAcionIcon(
          iconData: Icons.arrow_back,
          iconColor: Colors.white,
          iconSize: 18,
          containerPadding: EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
            left: 10,
            right: 10,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        titleSpacing: -18.0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              maxRadius: 14.0,
              backgroundImage: AssetImage("assets/avatar_placeholder.png"),
            ),
            Container(
              margin: EdgeInsets.only(left: 12.0),
              child: Text(
                widget.contato,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          AppBarAcionIcon(
            iconData: Icons.videocam,
            iconColor: Colors.white,
          ),
          AppBarAcionIcon(
            iconData: Icons.phone,
            iconColor: Colors.white,
          ),
          AppBarAcionIcon(
            iconData: Icons.more_vert,
            iconColor: Colors.white,
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        // color: Color(0xfffefada),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    ChatMsg(
                      msg: "Teste1234",
                      msgTime: "23:32",
                    ),
                    ChatMsg(
                      msg: "Teste1234",
                      msgTime: "01:14",
                    ),
                    ChatMsg(
                      msg:
                          "asd15156dsa516dsa156dsa156sda\dsadadsadsadsadadasdsadn156sad156asd156ads156ads156asd156asd15asd15ads1",
                      msgTime: "01:32",
                      received: false,
                      msgStatus: MsgStatus.seen,
                    ),
                    ChatMsg(
                      msg: "Teste1234",
                      msgTime: "01:14",
                      received: false,
                      msgStatus: MsgStatus.seen,
                    ),
                    ChatMsg(
                      msg: "TEST 123456789 ABC",
                      msgTime: "01:14",
                    ),
                    ChatMsg(
                      msg: "test abc",
                      msgTime: "01:14",
                      received: false,
                      msgStatus: MsgStatus.sent,
                    ),
                    ChatMsg(
                      msg: "test abc",
                      msgTime: "01:14",
                      received: false,
                      msgStatus: MsgStatus.receveid,
                    ),
                    ChatMsg(
                      msg: "test abc",
                      msgTime: "01:14",
                      received: false,
                      msgStatus: MsgStatus.notSent,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 5,
                bottom: 3,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ChatInputText(
                    textChanged: textChanged,
                  ),
                  FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColor,
                    mini: true,
                    child: Icon(
                      floatingButtonIcon,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatInputText extends StatefulWidget {
  final Function textChanged;

  const ChatInputText({
    Key key,
    this.textChanged,
  }) : super(key: key);

  @override
  _ChatInputTextState createState() => _ChatInputTextState();
}

class _ChatInputTextState extends State<ChatInputText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        maxLines: null,
        onChanged: widget.textChanged,
        decoration: InputDecoration(
          hintText: "Type your message",
          hintStyle: TextStyle(fontSize: 17),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,
              width: 0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          contentPadding: EdgeInsets.all(8.0),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Container(
            child: Icon(
              Icons.tag_faces,
              color: Colors.grey,
            ),
          ),
          suffixIcon: Icon(Icons.attach_file),
        ),
      ),
    );
  }
}
