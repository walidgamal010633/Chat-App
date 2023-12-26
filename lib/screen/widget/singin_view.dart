import 'package:chat_app/constants.dart';
import 'package:chat_app/custom%20widget/custom_textfield.dart';
import 'package:chat_app/custom%20widget/custom_bottom.dart';
import 'package:chat_app/screen/widget/register_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class singin_view extends StatefulWidget {
  const singin_view({super.key});

  @override
  State<singin_view> createState() => _singin_viewState();
}

class _singin_viewState extends State<singin_view> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  bool isloding = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloding,
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
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
                  const Text(
                    "Schalar Chat",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "Pacifico",
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Sing in",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  custom_textfield(
                    onChanged: (value) {
                      email = value;
                    },
                    hinttext: "Email",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  custom_textfield(
                    onChanged: (value) {
                      password = value;
                    },
                    hinttext: "password",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  custom_bottom(
                    ontap: () async {
                      setState(() {
                        isloding = true;
                      });
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        autovalidateMode = AutovalidateMode.always;
                      }
                      try {
                        UserCredential userrrr = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);
                        scaffold_massage(context, "You are logged in to chat");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == "invalid-credential") {
                          scaffold_massage(
                              context, "Wrong password provided for that user");
                        } else if (e.code == "invalid-email") {
                          scaffold_massage(
                              context, "No user found for that email.");
                        } else {
                          scaffold_massage(
                              context, "Verify the data , try later");
                        }
                      }
                      setState(() {
                        isloding = false;
                      });
                    },
                    text: "Sing in",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "dont't have an account ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, regester_view.id);
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
