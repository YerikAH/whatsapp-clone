import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

import '../theme/theme_app.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final data = ["papa","papa","papa","papa","papa","papa","papa","papa"];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const LinkWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 20.0),
            child: Text("Recientes",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: ThemeApp.gray)),
          ),
          ...data.map((e) => ListTile(
            
              title: const Text("Juan"),
              subtitle: Row(
                children: const [
                  Icon(Icons.input),
                  Text("Hace 17 minutos")
                ],
              ),
              leading: const CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call, size: 25.0,color: ThemeApp.green,)),
              onTap: (){},
            )
          )
        ],
      ),
    );
  }
}
