import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';



class chatbuble extends StatelessWidget {
  const chatbuble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
      
        
       margin: EdgeInsets.only(left: 16,bottom: 16,top: 16),
        decoration: BoxDecoration(
          
          color: kprimarcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32)
          ),
        ),
      
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Text("Hi iam a new user ",style: TextStyle(color: Colors.white,fontSize: 24),),
        ),
      ),
    );
  }
}
