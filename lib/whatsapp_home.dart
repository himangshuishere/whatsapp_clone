import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/camera_page.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';
import 'package:whatsapp_clone/pages/status_page.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 4, vsync: this, initialIndex: 1);
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        backgroundColor:Theme.of(context).primaryColor,
        actions: [Icon(Icons.search_sharp), Padding(
          padding: const EdgeInsets.only(left:20.0, right: 8.0),
          child: Icon(Icons.more_vert_sharp),
        )],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            const Tab(text: "CHATS"),
            const Tab(text: "STATUS"),
            const Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        foregroundColor: Colors.white,
        tooltip: "New Chat",
        onPressed: ()=> print("Hello World"),
      ),
    );
  }
}
