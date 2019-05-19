import 'package:flutter/material.dart';
import 'package:whatsapp_clone/appBar_action_icon.dart';
import 'package:whatsapp_clone/badge.dart';
import 'pages/calls.dart';
import 'pages/chats.dart';
import 'pages/status.dart';

import 'pages/camera.dart';

void main() => runApp(App());
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class App extends StatelessWidget {
  final List<Widget> topTabs = [
    Tab(
      icon: Icon(
        Icons.camera_alt,
        color: Colors.white,
      ),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("CHATS"),
          Badge(
            backgroundColor: Colors.white,
            textColor: Colors.teal.shade900,
            value: "3",
          ),
        ],
      ),
    ),
    Tab(text: "STATUS"),
    Tab(text: "CALLS"),
  ];
  void foo() {}
  final List<Widget> appBarActions = [
    AppBarAcionIcon(iconData: Icons.search),
    // AppBarAcionIcon(iconData: Icons.more_vert),
    PopupMenuButton<int>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
            const PopupMenuItem<int>(
              value: 0,
              child: Text('New group'),
            ),
            const PopupMenuItem<int>(
              value: 1,
              child: Text('New broadcast'),
            ),
            const PopupMenuItem<int>(
              value: 2,
              child: Text('WhatsApp web'),
            ),
            const PopupMenuItem<int>(
              value: 3,
              child: Text('Starred messages'),
            ),
            const PopupMenuItem<int>(
              value: 4,
              child: Text('Settings'),
            ),
          ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal.shade900,
      ),
      home: DefaultTabController(
        length: topTabs.length,
        initialIndex: 1,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            heroTag: "floatingButton",
            onPressed: () {},
            backgroundColor: Colors.green.shade700,
            child: Icon(Icons.chat, color: Colors.white),
          ),
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: topTabs,
            ),
            actions: appBarActions,
          ),
          body: TabBarView(
            children: <Widget>[
              Camera(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ),
      ),
    );
  }
}
