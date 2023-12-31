import 'dart:async';

import 'package:chat_app/constants.dart';
import 'package:chat_app/custom%20widget/chatbuble.dart';
import 'package:chat_app/custom%20widget/custom_textform.dart';
import 'package:chat_app/model/massages_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  ScrollController _controller = ScrollController();
  TextEditingController controller = TextEditingController();
  static String id = "chat page";
  CollectionReference massages =
      FirebaseFirestore.instance.collection(kmassagescollactions);

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments ;
    return StreamBuilder<QuerySnapshot>(
      stream: massages.orderBy("time",descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<massage_model> massageslist = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            massageslist.add(
              massage_model.fromjason(
                snapshot.data!.docs[i],
              ),
            );
          }
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
                    reverse: true,
                    controller: _controller,
                    itemCount: massageslist.length,
                    itemBuilder: (context, index) {
                      return massageslist[index].id ==email ? chatbuble(
                        massage: massageslist[index],
                      ): ChatBuble_forfrind(massage: massageslist[index] ,) ;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: custom_textform(
                    controller: controller,
                    onSubmitted: (data) {
                      massages.add({"massage": data, "time": DateTime.now(),"id":email});
                      controller.clear();
                      _controller.animateTo(
                         0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOutCubicEmphasized);
                    },
                  ),
                )
              ],
            ),
          );
        } else {
          return CircleAvatar();
        }
      },
    );
  }
}
