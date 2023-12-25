import 'package:flutter/material.dart';



class custom_textfield extends StatelessWidget {
  const custom_textfield({super.key, required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true){
          return "Field is Requird";
        }{
          return null;
        }
      },
      style: TextStyle(color: Colors.white, fontSize: 24),
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 16,color: Colors.redAccent),
        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 24, color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
