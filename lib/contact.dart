import 'package:flutter/material.dart';
import 'models/chat_model.dart';
import 'chat_screen.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
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
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Contacts", style: TextStyle(color: Colors.white)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "5 contacts",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            const Divider(
              height: 22.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(messageData[i].image),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    messageData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'MOBILE',
                    style: TextStyle(color: Colors.green, fontSize: 16.0),
                  ),
                ],
              ),
              onTap: () {
                var route = MaterialPageRoute(
                    builder: (BuildContext context) => ChatScreen(
                        name: messageData[i].name,
                        image: messageData[i].image));
                Navigator.of(context).push(route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
