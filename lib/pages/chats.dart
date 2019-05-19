import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_list_item.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ChatListItem(
              heroTag: "chat-1",
              chatName: "Chat 1",
              msg: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: 6,
                    ),
                    child: Icon(
                      Icons.done_all,
                      size: 16,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text("Test 1234"),
                ],
              ),
              msgTime: "22:44",
              muted: true,
              seen: true,
            ),
            ChatListItem(
              heroTag: "chat-2",
              chatName: "Chat 2",
              msg: Text("Teste 123"),
              msgTime: "18:23",
              muted: true,
            ),
            ChatListItem(
              heroTag: "chat-3",
              chatName: "Chat 3",
              msg: Text("Teste 123"),
              msgTime: "17:53",
              muted: false,
              seen: true,
            ),
            ChatListItem(
              heroTag: "chat-4",
              chatName: "Chat 4",
              msg: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: 6,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 16,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text("Photo"),
                ],
              ),
              msgTime: "07:21",
              muted: true,
            ),
            ChatListItem(
              heroTag: "chat-5",
              chatName: "Chat 5",
              msg: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: 6,
                    ),
                    child: Icon(
                      Icons.videocam,
                      size: 16,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text("Video"),
                ],
              ),
              msgTime: "Ontem",
              muted: false,
            ),
          ],
        ),
      ),
    );
  }
}
