import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/theme_app.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState(){

  }
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
        bottom: const TabBar(
          indicatorColor: ThemeApp.white,
          indicatorWeight: 3.5,
          labelColor: ThemeApp.white,
          tabs: [
            Tab(
              child: Icon(Icons.group),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALL"),
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.message, color: ThemeApp.white,),
        
      ),

      body: SingleChildScrollView(child: Container(),)
    );
  }
}