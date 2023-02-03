import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/screens.dart';
import 'package:whatsapp_clone/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      home: const HomeScreen(),
      theme: ThemeApp.configTheme,
    );
  }
}
