import 'package:flutter/material.dart';



class custom_bottom extends StatelessWidget {
  const custom_bottom({super.key, required this.text});
final String text ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(child: Text(text,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        ),
    );
  }
}