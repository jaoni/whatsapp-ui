import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/C4E03AQEwDavaA5ObCg/profile-displayphoto-shrink_800_800/0/1625834200886?e=2147483647&v=beta&t=iQme8nR-WveJWiztjTw4H-Gncr96m6tKLUnBmsfeAJs"),
            ),
            title: Text(
              "Joshua",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Add new Status"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Recents updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.teal[500],
              backgroundImage: NetworkImage(status[2].image),
            ),
            title: Text(
              status[2].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("6:30am"),
          ),
        ],
      ),
    );
  }
}
