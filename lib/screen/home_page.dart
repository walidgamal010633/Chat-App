import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/widget/register_view.dart';
import 'package:chat_app/screen/widget/signin_view.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimarcolor,
      body: signin_view());
  }
}
