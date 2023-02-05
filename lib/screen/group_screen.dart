import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {

  const GroupScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final String titleGroup = "Introducing the Communities feature";
    final String textGroup = "Easily organize your related groups and send notices. Now your communities, like neighborhoods and schools, can have their own space.";


    final imageComunity = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/comunity.png")
        )
      ),


    );



    return Column(
      children: [
        imageComunity,
        Text("", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
        Text("")

      ],


    );
  }
}