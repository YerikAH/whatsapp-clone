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
            final String timeString = e.time.substring(0,2);
            final int stringToNumber = int.parse(timeString);
            final String pmOram =stringToNumber > 12 ? " p.m." : " a.m.";
            String count = e.countCalls >= 2 ? "(${e.countCalls})" : ""; 
            if(day == e.lastCallDay){
              dayFinal = "Hoy";
              monthFinal = "";
            }else if((day - 1 )== e.lastCallDay){
              dayFinal = "Ayer";
              monthFinal = "";
            }else{
              dayFinal = "$day de";
            }

            return ListTile(
              title: Text(e.name),
              subtitle: Row(
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: e.answer ?  Matrix4.rotationZ(-0.7) : Matrix4.rotationZ(2.3),
                    child: Icon(Icons.arrow_forward, color: e.answer ? ThemeApp.greenPale : ThemeApp.red,)
                  ),
                  Text("$count $dayFinal $monthFinal ${e.time} $pmOram",overflow: TextOverflow.ellipsis,)
                ],
              ),
              leading: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(e.avatar),
              ),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.call, size: 25.0,color: ThemeApp.green,)),
              onTap: (){},
            );
          }
          )
        ],
      ),
    );
  }
}
