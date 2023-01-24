import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.photo_camera_outlined),
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert_sharp),
          ),
        ],
        bottom: TabBar(
          tabs: [

          ]
        ),
      ),

      body: SingleChildScrollView(child: Container(),)
    );
  }
}