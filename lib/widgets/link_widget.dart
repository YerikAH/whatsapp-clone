import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class LinkWidget extends StatelessWidget {
   
  const LinkWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: const Text("Create call link", style: TextStyle(fontWeight: FontWeight.w600, color: ThemeApp.black),),
      subtitle: const Text("Share a link for your WhatsApp call."),
      leading: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(-0.7),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(255.0),
          color: ThemeApp.green,
          ),
          child: const Icon(Icons.link, color: ThemeApp.white,size: 25.0,),
        ),
      ),
    );
  }
}