import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class custom_textform extends StatelessWidget {
  const custom_textform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.send),
          prefixIconColor: kprimarcolor,
          hintText: "Send Massage",
          hintStyle: TextStyle(fontSize: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
