import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

import '../theme/theme_app.dart';

class CallScreen extends StatelessWidget {
  DataDummy data = DataDummy();
  String getMonthName(int monthNum) {
    List<String> months = [
      "Enero",
      "Febrero",
      "Marzo",
      "Abril",
      "Mayo",
      "Junio",
      "Julio",
      "Agosto",
      "Septiembre",
      "Octubre",
      "Noviembre",
      "Diciembre",
    ];
    return months[monthNum];
  }


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
            String dayFinal;
            String monthFinal = getMonthName(e.lastCallMounth);
            if(day == e.lastCallDay){
              dayFinal = "Hoy";
              monthFinal = "";
            }else if((day - 1 )== e.lastCallDay){
              dayFinal = "Ayer";
              monthFinal = "";
            }else{
              dayFinal = "$day";
            }

            return ListTile(
              title: Text(e.name),
              subtitle: Row(
                children: [
                  Icon(Icons.input),
                  Text("$dayFinal $monthFinal ${e.time}")
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
