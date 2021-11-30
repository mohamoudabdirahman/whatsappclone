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
  const Homescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: primary,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0,25.0,8.0,0.0),
              child: Row(
                children: [
                  
                Text("WhatsApp",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)
                        ),
                        SizedBox(
                          width: 150.0,
                        ),
                        IconButton(onPressed: (){}, 
                        icon: Icon(Icons.search),
                        ),
                        IconButton(onPressed: (){}, 
                        icon: Icon(Icons.more),
                    )
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              children: [
                Chatscreen(),
                Statuspage(),
                callpage()
              ],
            ),
          )
        ],
      )
    );
  }
}

