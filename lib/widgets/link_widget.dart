import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class LinkWidget extends StatelessWidget {
   
  const LinkWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: Text("Crear enlace de llamada"),
      subtitle: Text("Comparte un enlace para tu llamada de WhatsApp"),
      leading: Container(
        width: 25.0,
        height: 25.0,
        color: ThemeApp.green,
        child: Icon(Icons.link, color: ThemeApp.white,size: 16.0,),

      ),
    );
  }
}