import 'package:chat_app/screen/home_page.dart';
import 'package:chat_app/screen/widget/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chat_App());
}

class Chat_App extends StatelessWidget {
  const Chat_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        regester_view.id:(context) => regester_view(),
      },
      home: home_page(),
    );
  }
}
