import 'package:whatsapp_clone/models/models.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
      avatar:
          "https://i.pinimg.com/280x280_RS/42/03/a5/4203a57a78f6f1b1cc8ce5750f614656.jpg",
      name: "Mamá",
      message: "Llegare un poco tarde hijooo",
      time: "18:05",
      date: "12/12",
      isTyping: false,
      countMessage: 3,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/901236/pexels-photo-901236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Josue Torres",
      message: "Hola, enviame el link de la clase",
      time: "12:40",
      date: "12/12",
      isTyping: true,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/11298964/pexels-photo-11298964.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
      name: "Nelson",
      message: "Ya he enviado todos los trabajos",
      time: "11:50",
      date: "04/10",
      isTyping: false,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/3768125/pexels-photo-3768125.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Susana Zapata Ruiz",
      message: "Dónde estas? Por favor no tardes mucho",
      time: "07:05",
      date: "12:07",
      isTyping: true,
      countMessage: 7,
    ),
  ];

  List<MessageModel> messages = [
    MessageModel(
      message: "Hola",
      type: "other",
      time: "10:30",
    ),
    MessageModel(
      message: "Hola, Cómo estas?",
      type: "me",
      time: "10:31",
    ),
    MessageModel(
      message: "Estás estudiando Kotlin?",
      type: "me",
      time: "10:32",
    ),
    MessageModel(
      message: "Si, ahora estoy estudiando",
      type: "other",
      time: "10:32",
    ),
  ];
}