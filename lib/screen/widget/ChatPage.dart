import 'dart:async';

import 'package:chat_app/constants.dart';
import 'package:chat_app/custom%20widget/chatbuble.dart';
import 'package:chat_app/custom%20widget/custom_textform.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});
   TextEditingController controller =TextEditingController();
  static String id = "chat page";
  CollectionReference massages = FirebaseFirestore.instance.collection(kmassagescollactions);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kprimarcolor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/scholar.png",
              width: 65,
            ),
            Text(
              " Chat",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return chatbuble();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: custom_textform(
              controller:controller ,
              onSubmitted: (data) {
                massages.add({
                  "massagee" : data,
                  "Time":DateTime.now()
                });
                controller.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
