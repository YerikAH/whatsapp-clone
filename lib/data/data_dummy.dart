import 'package:whatsapp_clone/models/models.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
      avatar:
          "",
      name: "Mamá",
      message: "Llegare un poco tarde hijooo",
      time: "18:05",
      date: "12/12",
      isTyping: false,
      countMessage: 3,
    ),
    ChatModel(
      avatar:
          "",
      name: "Josue Torres",
      message: "Hola, enviame el link de la clase",
      time: "12:40",
      date: "12/12",
      isTyping: true,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "",
      name: "Nelson",
      message: "Ya he enviado todos los trabajos",
      time: "11:50",
      date: "04/10",
      isTyping: false,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
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