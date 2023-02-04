import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel dataChat;
  ItemChatWidget({required this.dataChat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(
              image: dataChat.avatar,
              name: dataChat.name,
            ),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 22,
        backgroundImage: NetworkImage(dataChat.avatar),
      ),

      title: Text(
        dataChat.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),

      subtitle: Text(
        dataChat.isTyping ? "typing..." : dataChat.message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: dataChat.isTyping ? Color(0xff10CE5F) : Colors.black54,
        ),
      ),

      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dataChat.time,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: Colors.black54,
            ),
          ),
          dataChat.countMessage > 0
              ? Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Color(0xff10CE5F),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    dataChat.countMessage.toString(),
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
