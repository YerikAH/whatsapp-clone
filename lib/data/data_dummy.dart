import 'package:whatsapp_clone/models/call_model.dart';
import 'package:whatsapp_clone/models/models.dart';

class DataDummy {
  final callsAns = [
    CallModel(
        name: "Mamá",
        lastCallDay: 5,
        lastCallMounth: 1,
        countCalls: 1,
        answer: true,
        avatar:
            "https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg",
        time: "16:00"),
    CallModel(
        name: "Mamá",
        lastCallDay: 4,
        lastCallMounth: 1,
        countCalls: 1,
        answer: true,
        avatar:
            "https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg",
        time: "08:24"),
    CallModel(
        name: "Mamá",
        lastCallDay: 2,
        lastCallMounth: 0,
        countCalls: 2,
        answer: false,
        avatar:
            "https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg",
        time: "15:40"),
  ];

  Map<String, List<MessageModel>> personMessages = {
    'Mamá': [
      MessageModel(
        message: "Hijooooo",
        type: "other",
        time: "10:30",
      ),
      MessageModel(
        message: "¿Que estas haciendo?",
        type: "me",
        time: "10:31",
      ),
      MessageModel(
        message: "Estaba un rato estudiando maaaa",
        type: "me",
        time: "10:31",
      ),
      MessageModel(
        message: "Ya hijoo, ya vengo",
        type: "other",
        time: "10:32",
      ),
      MessageModel(
        message: "Ya maaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
        type: "me",
        time: "10:32",
      ),
    ],
    'Josue Torres': [
      MessageModel(
        message: "Hola",
        type: "other",
        time: "10:30",
      ),
      MessageModel(
        message: "Hola, Cómo estas?",
        type: "me",
        time: "11:31",
      ),
      MessageModel(
        message: "Estoy bien",
        type: "other",
        time: "15:00",
      ),
      MessageModel(
        message: "Estás estudiando TypeScript?",
        type: "me",
        time: "15:32",
      ),
      MessageModel(
        message: "Si, pronto ire a por Rust",
        type: "other",
        time: "15:33",
      ),
      MessageModel(
        message: "Woowwwww",
        type: "me",
        time: "15:35",
      ),
    ],
    'Nelson': [
      MessageModel(
        message: "Hola",
        type: "me",
        time: "17:09",
      ),
    ],
    'Susana Zapata Ruiz': [
      MessageModel(
        message: "Hola",
        type: "other",
        time: "8:05",
      ),
      MessageModel(
        message: "Holaaaaaa",
        type: "other",
        time: "8:05",
      ),
      MessageModel(
        message: "Holaaaaaaaaaaaaaaaaaaaaaaaaa",
        type: "other",
        time: "8:05",
      ),
      MessageModel(
        message: "puedes pasarme los apuntes de Python?",
        type: "other",
        time: "8:06",
      ),
      MessageModel(
        message: "acerca de IA",
        type: "other",
        time: "8:06",
      ),
      MessageModel(
        message: "Porfavor, lo envías",
        type: "other",
        time: "8:06",
      ),
      MessageModel(
        message: "Tambien la de POO con Java.",
        type: "other",
        time: "8:07",
      ),
    ],
  };

  List<ChatModel> getChatModels() {
    return [
      ChatModel(
        avatar:
            "https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg",
        name: "Mamá",
        message: personMessages["Mamá"]?.last.message,
        time: "12:40",
        date: "12/12",
        isTyping: false,
        countMessage: 0,
      ),
      ChatModel(
        avatar:
            "https://images.pexels.com/photos/901236/pexels-photo-901236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        name: "Josue Torres",
        message: personMessages["Josue Torres"]?.last.message,
        time: "12:40",
        date: "12/12",
        isTyping: false,
        countMessage: 0,
      ),
      ChatModel(
        avatar:
            "https://images.pexels.com/photos/11298964/pexels-photo-11298964.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
        name: "Nelson",
        message: personMessages["Nelson"]?.last.message,
        time: "11:50",
        date: "04/10",
        isTyping: false,
        countMessage: 0,
      ),
      ChatModel(
        avatar:
            "https://images.pexels.com/photos/3768125/pexels-photo-3768125.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        name: "Susana Zapata Ruiz",
        message: personMessages["Susana Zapata Ruiz"]?.last.message,
        time: "07:05",
        date: "12/07",
        isTyping: false,
        countMessage: 7,
      ),
    ];
  }

  late List<ChatModel> chats;

  DataDummy() {
    var chatModels = getChatModels();
    chats = chatModels;
  }
}
