
import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/screens/patient_screens/patient_home_screen.dart';
import 'package:elderly_assistant/widgets/auth_head.dart';
import 'package:elderly_assistant/widgets/custome_button.dart';
import 'package:elderly_assistant/widgets/custome_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'login.dart';

class PatientRegisterPage extends StatefulWidget {
  PatientRegisterPage({super.key});

  @override
  State<PatientRegisterPage> createState() => _PatientRegisterPageState();
}

class _PatientRegisterPageState extends State<PatientRegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  String? email;
  String? name;
  String? password;
  String? fatherCode;
  String? age;
  bool islodaing = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    codeController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ModalProgressHUD(
          inAsyncCall: islodaing,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AuthHead(name: "Register For Patient"),
                  CustumeTextField(
                    textEditingController: nameController,
                    labelText: 'Name',
                    textInputType: TextInputType.name,
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      name = data;
                      setState(() {});
                    },
                    hint: "John Smith",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textEditingController: nameController,
                    labelText: 'ID',
                    textInputType: TextInputType.name,
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      name = data;
                      setState(() {});
                    },
                    hint: "123456789",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textEditingController: ageController,
                    labelText: 'Phone',
                    textInputType: TextInputType.phone,
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your phone';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      age = data;
                      setState(() {});
                    },
                    hint: "0123456789",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textEditingController: emailController,
                    labelText: "Email",
                    textInputType: TextInputType.emailAddress,
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      email = data;
                      setState(() {});
                    },
                    hint: "example@gmial.com",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textEditingController: codeController,
                    labelText: 'Gender',
                    textInputType: TextInputType.text,
                    ispass: false,
                    validetor: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Father code';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      fatherCode = data;
                      setState(() {});
                    },
                    hint: "male",

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textInputType: TextInputType.visiblePassword,
                    textEditingController: passController,
                    labelText: "Password",
                    validetor: (data) {
                      if (data.isEmpty) {
                        return 'Please enter a password';
                      }
                      // Simple password length check
                      if (data.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null; // Validation passed
                    },
                    onchange: (data) {
                      password = data;
                      setState(() {});
                    },
                    hint: "*********",
                    ispass: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  CustomButton(
                    text: "Register",
                    function: () async {
                      register();
                    },
                  ),
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
                        child: const Text(
                          "  Login",
                          style: TextStyle(
                            color: Colors.blueAccent,
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

  void register() async {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) {
          return PatientHome();
        }));
    // if (formKey.currentState!.validate()) {
    //   islodaing = true;
    //   setState(() {});
    //   await Auth.childRegister(userModel: userModel, ctx: context);
    //   islodaing = false;
    //   setState(() {});
    // }
  }
}
