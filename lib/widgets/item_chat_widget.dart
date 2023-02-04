import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel data;
  ItemChatWidget({required this.data});

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.black12,
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
          color: data.isTyping ? Color(0xff10CE5F) : Colors.black54,
        ),
      ),

      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data.time,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: Colors.black54,
            ),
          ),
          data.countMessage > 0
              ? Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Color(0xff10CE5F),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    data.countMessage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
