


import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/screens/auth_screens/login.dart';
import 'package:elderly_assistant/widgets/custome_button.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isstart=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/SNAG-23110317473900-removebg-preview.png",
              height: 300,
              width: 300,
              fit: BoxFit.fill,
            ),
             Text(
              'Elderly assistant',
              style: TextStyle(
                  fontSize: 32, fontFamily: "Pacifico", color: KBtnColor),
            ),
            const SizedBox(height: 50,),
            isstart? Container(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(color: KBtnColor,),
            ): CustomButton(
              text: 'Get Started',
              function: (){
                isstart=true;
                setState(() {});
                Future.delayed(Duration(seconds: 2),() {
                  isstart=false;
                  setState(() {});
                },).then((value) {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}


