import 'package:chat_app/custom%20widget/custom_textfield.dart';
import 'package:chat_app/custom%20widget/custom_bottom.dart';
import 'package:chat_app/screen/widget/register_view.dart';
import 'package:flutter/material.dart';



class singin_view extends StatefulWidget {
  const singin_view({super.key});

  @override
  State<singin_view> createState() => _singin_viewState();
}

class _singin_viewState extends State<singin_view> {
  GlobalKey<FormState> formkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key:formkey ,
      autovalidateMode:autovalidateMode ,
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
               const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/images/scholar.png",
                ),
              const  Text(
                  "Schalar Chat",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                  ),
                ),
             const   SizedBox(
                  height: 50,
                ),
             const   Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sing in",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 16,
                ),
               const custom_textfield(
                  hinttext: "Email",
                ),
              const  SizedBox(
                  height: 12,
                ),
              const  custom_textfield(
                  hinttext: "password",
                ),
               const SizedBox(height: 24,),
                custom_bottom(
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    autovalidateMode=AutovalidateMode.always;
                  }
                },
                  text: "Sing in",
                ),
              const  SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 const   Text("dont't have an account ",style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),),
                   
                    InkWell(onTap: () {
                    Navigator.pushNamed(context, regester_view.id);
                    },
                      child: Text("Register",style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.5),
                    ),),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

