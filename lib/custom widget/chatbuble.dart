import 'package:chat_app/constants.dart';
import 'package:chat_app/model/massages_model.dart';
import 'package:flutter/material.dart';



class chatbuble extends StatelessWidget {
  const chatbuble({
    super.key, required this.massage,
  });
  final massage_model massage ;

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
      
        child: Container(
      
        
       margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          
          color: kprimarcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32)
          ),
        ),
      
        child: Stack(
          children: [
            Text(massage.massage,style: TextStyle(color: Colors.white,fontSize: 24)),
            SizedBox(height: 60,),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text("12:12",style: TextStyle(color: Colors.white,fontSize: 16)))
          ],
        )
      ),
      ),
    );
  }
}


class ChatBuble_forfrind extends StatelessWidget {
  const ChatBuble_forfrind({
    super.key, required this.massage,
  });
  final massage_model massage ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
      
        
       margin: EdgeInsets.only(left: 16,bottom: 16,top: 16),
        decoration: BoxDecoration(
          
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32)
          ),
        ),
      
        child: Container(
      
        
       margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          
          
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32)
          ),
        ),
      
        child: Stack(
          children: [
            Text(massage.massage,style: TextStyle(color: Colors.white,fontSize: 24)),
            SizedBox(height: 60,),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text("12:12",style: TextStyle(color: Colors.white,fontSize: 16)))
          ],
        )
      ),
      ),
    );
  }
}