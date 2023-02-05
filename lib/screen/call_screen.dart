import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

class CallScreen extends StatelessWidget {
   
  const CallScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LinkWidget()
        ],
      ),
    );
  }
}