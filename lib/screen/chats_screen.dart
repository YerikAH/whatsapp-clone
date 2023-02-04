import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';

class ChatsScreen extends StatelessWidget {
   

  DataDummy data = DataDummy();

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.chats.length,
      itemBuilder: (BuildContext context, int index){
	return  
      }
    );
  }
}
