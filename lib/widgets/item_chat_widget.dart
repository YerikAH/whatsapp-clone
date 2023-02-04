import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';

import '../theme/theme_app.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel data;
  ItemChatWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    final String timeString = data.time.substring(0,2);
    final int stringToNumber = int.parse(timeString);
    final String pmOram =stringToNumber > 12 ? "p.m." : "a.m.";
    return ListTile(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ChatDetailPage(
        //       name: data.name,
        //       image: data.avatar,
        //     ),
        //   ),
        // );
      },
      leading: CircleAvatar(
        backgroundColor: ThemeApp.grayPale,
        backgroundImage: NetworkImage(data.avatar),
        radius: 22,
      ),

      title: Text(
        data.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),

      subtitle: Text(
        data.isTyping ? "typing..." : data.message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: data.isTyping ? ThemeApp.greenPale : ThemeApp.gray,
        ),
      ),

      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${data.time}$pmOram",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: ThemeApp.gray,
            ),
          ),
          data.countMessage > 0
              ? Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: ThemeApp.greenPale,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    data.countMessage.toString(),
                    style: const TextStyle(
                      color: ThemeApp.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
