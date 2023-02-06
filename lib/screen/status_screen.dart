import 'dart:ui';

import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class StatusScreen extends StatelessWidget {
   
  const StatusScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage("https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg")
            ),
            title: Text("My status"),
            subtitle: Text("Tab to add status update"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text("Recent updates", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: ThemeApp.gray),),
          )
        ],
      ),
    );
  }
}