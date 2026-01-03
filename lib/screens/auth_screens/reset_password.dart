
import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/screens/auth_screens/login.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../widgets/auth_head.dart';
import '../../widgets/custome_button.dart';
import '../../widgets/custome_text_filed.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String? email, password;
  bool isloading=false;
  GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ModalProgressHUD(
          inAsyncCall: isloading,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AuthHead(name: 'Reset Password'),
                  CustumeTextField(
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      email = data;
                      setState(() {});
                    },
                    hint: "Email",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: 'Reset Password',
                      function: ()  {

                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "do have an account ?",
                        style: TextStyle(
                          color: KBtnColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                        },
                        child:  Text(
                          "  Login",
                          style: TextStyle(
                            color: KBtnColor.withOpacity(0.9),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}