import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/widget/ChatPage.dart';
import 'package:chat_app/custom%20widget/custom_bottom.dart';
import 'package:chat_app/custom%20widget/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class regester_view extends StatefulWidget {
  const regester_view({super.key});
  static String id = "register";
  @override
  State<regester_view> createState() => _regester_viewState();
}

class _regester_viewState extends State<regester_view> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  late String Email;
  late String password;
   bool isloding =false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimarcolor,
      body: ModalProgressHUD(
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
                        "Register",
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
                        Email = value;
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
                          isloding =true;
                        });
                        if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            autovalidateMode = AutovalidateMode.always;
                          }
                        try {
                          
                          await registerUser();
                          scaffold_massage(context, "The account has been created successfully");
                          
                        } on FirebaseAuthException catch (e) {
                          
                            scaffold_massage(context, "${e.code}");
                          
                          
                         
                        } catch (e) {
                          print(e);
                        }
                         setState(() {
                            isloding = false;
                          });
                      },
                      text: "Register",
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            "login",
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
      ),
    );
    ;
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: Email,
      password: password,
    );
  }

  
}
