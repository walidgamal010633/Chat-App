import 'package:chat_app/screen/widget/ChatPage.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screen/home_page.dart';
import 'package:chat_app/screen/widget/register_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    
  );
  runApp(const Chat_App());
}

class Chat_App extends StatelessWidget {
  const Chat_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        regester_view.id:(context) => regester_view(),
        ChatPage.id :(context) => ChatPage(),
      },
      home: home_page(),
    );
  }
}
