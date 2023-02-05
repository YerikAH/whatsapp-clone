import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../theme/theme_app.dart';

class ChatDetailScreen extends StatefulWidget {
  String image;
  String name;

  ChatDetailScreen({super.key, 
    required this.image,
    required this.name,
  });

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreen();
}

class _ChatDetailScreen extends State<ChatDetailScreen> {
  DataDummy data = DataDummy();
  bool isTyping = false;
  @override
  Widget build(BuildContext context) {
    final String name = widget.name;  
    final String imagen = widget.image;
    return Scaffold(
      backgroundColor: ThemeApp.grayYellow,
      appBar: _appBarChat(name: name, image: imagen),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.builder(
            itemCount: data.messages.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: data.messages[index].type == "me"
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: data.messages[index].type == "me"
                        ? const Color(0xffE7FFDC)
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              data.messages[index].message,
                            ),
                            const SizedBox(
                              width: 50.0,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 8,
                        child: Row(
                          children: [
                            Text(
                              data.messages[index].time,
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: ThemeApp.graySemiPale,
                              ),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            const Icon(
                              Icons.check,
                              size: 13,
                              color: ThemeApp.sky,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 7.0,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        prefixIcon: const Icon(
                          Icons.sentiment_satisfied_alt,
                          color: Color(0xff8796A2),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.attach_file_outlined,
                              color: Color(0xff8796A2),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Color(0xff8796A2),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 14.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (String value) {
                        if (value.isNotEmpty) {
                          isTyping = true;
                        } else {
                          isTyping = false;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff00A884),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isTyping ? Icons.send : Icons.mic,
                        size: 28.0,
                        color: ThemeApp.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _appBarChat extends StatelessWidget with PreferredSizeWidget{

  final String name;
  final String image;
  
  const _appBarChat({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 20,
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: ThemeApp.grayPale,
            backgroundImage: NetworkImage(image),
          ),
          const SizedBox(
            width: 7.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const Text(
                  "Last seen today 19:00 pm",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_call,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
          ),
        ),
      ],
    );
  }
}