import 'package:flutter/material.dart';
import 'package:whatsapp_clone/status.dart';

import 'calls.dart';
import 'chats.dart';
import 'contact.dart';
import 'groups.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp clone",
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.teal[500],
        ),
        tabBarTheme: const TabBarTheme(labelColor: Colors.white),
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.black87, fontSize: 16.0),
          bodyText1: TextStyle(color: Colors.white),
          button: TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
        primaryColor: Colors.teal[500],
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp Clone",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 24,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.photo_camera_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.teal[500],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            const Tab(
                icon: Icon(
              Icons.groups,
              color: Colors.white,
            )),
            Tab(
                child:
                    Text("CHATS", style: Theme.of(context).textTheme.button)),
            Tab(
                child:
                    Text("STATUS", style: Theme.of(context).textTheme.button)),
            Tab(
                child:
                    Text("CALLS", style: Theme.of(context).textTheme.button)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Groups(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          var router = MaterialPageRoute(
              builder: (BuildContext context) => const Contact());
          Navigator.of(context).push(router);
        },
      ),
    );
  }
}
