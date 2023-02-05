import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

import '../theme/theme_app.dart';

class CallScreen extends StatelessWidget {
  DataDummy data = DataDummy();
  CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final dataCalls = data.callsAns;
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
          ...dataCalls.map((e){ 
            DateTime now = DateTime.now();
            int day = now.day;
            int month = now.month;
            final xx = "";
            return ListTile(
              title: Text(e.name),
              subtitle: Row(
                children: const [
                  Icon(Icons.input),
                  Text("Hace 17 minutos")
                ],
              ),
              leading: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(e.avatar),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call, size: 25.0,color: ThemeApp.green,)),
              onTap: (){},
            );
          }
          )
        ],
      ),
    );
  }
}
