
import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/screens/doctors_screens/doctor_home.dart';
import 'package:elderly_assistant/widgets/auth_head.dart';
import 'package:elderly_assistant/widgets/custome_button.dart';
import 'package:elderly_assistant/widgets/custome_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'login.dart';

class DoctorRegisterPage extends StatefulWidget {
  DoctorRegisterPage({super.key});

  @override
  State<DoctorRegisterPage> createState() => _DoctorRegisterPageState();
}

class _DoctorRegisterPageState extends State<DoctorRegisterPage> {
  String? email;
  String? name;
  String? password;

  bool islodaing = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController specialityController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

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
                  AuthHead(name: "Register For Doctor"),
                  CustumeTextField(
                    textEditingController: nameController,
                    labelText: 'Name',
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
                    height: 20,
                  ),
                  CustumeTextField(
                    textEditingController: nameController,
                    labelText: 'ID',
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
                    height: 20,
                  ),
                  CustumeTextField(
                    textEditingController: emailController,
                    labelText: "Email",
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
                    height: 20,
                  ),
                  CustumeTextField(
                    textEditingController: phoneController,
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

                      setState(() {});
                    },
                    hint: "0123456789",
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  CustumeTextField(
                    textEditingController: genderController,
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

                      setState(() {});
                    },
                    hint: "male",

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustumeTextField(
                    textEditingController: specialityController,
                    labelText: 'Speciality',
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
                    height: 20,
                  ),
                  CustumeTextField(
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            return DoctorHome();
                          }));
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

  void register({userModel}) async {
    // if (formKey.currentState!.validate()) {
    //   islodaing = true;
    //   setState(() {});
    //   await Auth.fatherRegister(userModel: userModel, ctx: context);
    //   islodaing = false;
    //   setState(() {});
    //}
  }
}
