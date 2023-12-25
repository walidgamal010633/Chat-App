import 'package:chat_app/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chat_App());
}

class Chat_App extends StatelessWidget {
  const Chat_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        
        backgroundColor: Color(0xff284461),
        body: home_page(),
      ),
    );
  }
}