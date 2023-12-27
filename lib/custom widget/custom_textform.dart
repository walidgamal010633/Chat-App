import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class custom_textform extends StatelessWidget {
  const custom_textform({
    super.key,
    this.onSubmitted, this.controller,
  });
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      onSubmitted: onSubmitted,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.send),
          prefixIconColor: kprimarcolor,
          hintText: "Send Massage",
          hintStyle: TextStyle(fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
