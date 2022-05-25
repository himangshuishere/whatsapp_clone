import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 7, 94, 84),
        accentColor: Color.fromARGB(255, 37, 211, 102),
      ),
      home: const WhatsAppHome(),
      debugShowCheckedModeBanner: false
    );
  }
}
