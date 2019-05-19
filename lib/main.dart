import 'package:flutter/material.dart';
import 'package:whatsapp_clone/appBar_action_icon.dart';
import 'package:whatsapp_clone/badge.dart';
import 'pages/calls.dart';
import 'pages/chats.dart';
import 'pages/status.dart';

import 'pages/camera.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  static const TextStyle tabTextStyle = TextStyle(
    fontSize: 11,
  );

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  final List<Widget> topTabs = [
    Tab(
      icon: Icon(
        Icons.camera_alt,
        color: Colors.white,
      ),
    ),
    Tab(
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "CHATS",
            style: App.tabTextStyle,
          ),
          Badge(
            padding: EdgeInsets.all(4),
            backgroundColor: Colors.white,
            textColor: Colors.teal.shade900,
            value: "3",
          ),
        ],
      ),
    ),
    Tab(
      child: Text(
        "STATUS",
        style: App.tabTextStyle,
      ),
    ),
    Tab(
      child: Text(
        "CALLS",
        style: App.tabTextStyle,
      ),
    )
  ];

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
    ),
  ];

  TabController _tabController;
  int currentScreen = 1;
  static const List<IconData> screenIcons = [
    Icons.chat,
    Icons.camera_alt,
    Icons.phone,
  ];
  _AppState() {
    _tabController = TabController(
      vsync: this,
      length: topTabs.length,
      initialIndex: 1,
    );

    _tabController.addListener(() {
      setState(() {
        currentScreen = _tabController.index;
      });
    });
  }

  List<Widget> floatingButtons() {
    List<Widget> buttons = [];

    if (currentScreen == 2) {
      buttons.add(Container(
        margin: EdgeInsets.only(bottom: 12),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(Icons.edit, color: Colors.black),
        ),
      ));
    }

    if (currentScreen > 0) {
      buttons.add(FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff1ac55b),
        child: Icon(screenIcons[currentScreen - 1], color: Colors.white),
      ));
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal.shade800,
      ),
      home: Scaffold(
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: floatingButtons(),
        ),
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: topTabs,
          ),
          actions: appBarActions,
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
