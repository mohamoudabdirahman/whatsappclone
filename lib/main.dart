import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/calls.dart';
import 'package:whatsappclone/screens/chat.dart';
import 'package:whatsappclone/screens/status.dart';
import 'cons.dart';

void main() {
  runApp(const MaterialApp(
    home: Homescreen(),
  ));
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  final List container = [Chatscreen(), Statuspage(), callpage()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 100,
            color: primary,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 0.0),
              child: Row(
                children: [
                  Text("WhatsApp",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    width: 150.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: primary,
            child: TabBar(
              
              tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "calls",
              )
            ]),
          ),
          Expanded(
            child: PageView(
              children: [Chatscreen(), Statuspage(), callpage()],
            ),
          )
        ],
      )),
    );
  }
}
