import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class GroupScreen extends StatelessWidget {

  const GroupScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const String titleGroup = "Introducing the Communities feature";
    const String textGroup = "Easily organize your related groups and send notices. Now your communities, like neighborhoods and schools, can have their own space.";


    final imageComunity = Container(
      height: 250.0,
      width: 250.0,

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/comunity-2.png"),
          fit: BoxFit.contain
        ),
        
      ),


    );



    return SingleChildScrollView(
      child: Column(
        children: [
          imageComunity,
    
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.0),
            child:  Text(titleGroup, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color:ThemeApp.black ), textAlign: TextAlign.center, ),
          ),
          const SizedBox(height: 20.0,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(textGroup, textAlign: TextAlign.center,style: TextStyle(height: 1.5,color:ThemeApp.gray),),
          )
    
        ],
    
    
      ),
    );
  }
}