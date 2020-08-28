import 'package:flutter/material.dart';
import 'package:messagingApp/pages/call_screen.dart';
import 'package:messagingApp/pages/camera_screen.dart';
import 'package:messagingApp/pages/chat_screen.dart';
import 'package:messagingApp/pages/status_screen.dart';

class AgitsAppHome extends StatefulWidget {
  @override
  _AgitsAppHomeState createState() => _AgitsAppHomeState();
}

class _AgitsAppHomeState extends State<AgitsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 1, vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AgitsApp"),
        elevation: 3.0,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS",
            ),
            new Tab(text: "STATUS"),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
        actions: [new Icon(Icons.search),new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)) ,new Icon(Icons.more_vert)],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: [
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => {print('open chats')},
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
