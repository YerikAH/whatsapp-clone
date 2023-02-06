import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class NoticeWidget extends StatelessWidget {
  const NoticeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Icon(Icons.lock, color: ThemeApp.gray, size: 14.0,),
          const SizedBox(width: 5.0,),
          RichText(
            maxLines: 4,
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(fontSize: 16.0),
      
              children: <TextSpan>[
                TextSpan(
                  text: 'Tus mensajes personales están ', 
                  style: TextStyle(color: ThemeApp.gray
                  )
                ),
                TextSpan(
                  text: 'cifrados de extremo a extremo.', 
                  style: TextStyle(color: ThemeApp.green
                  )
                )
              ],
      
            ) 
          ),
        ],
      ),
    );
  }
}
