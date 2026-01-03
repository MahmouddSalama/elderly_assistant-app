import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../consts_statics/colors.dart';
import '../../functions/get_size.dart';
import '../../widgets/auth_head.dart';
import '../../widgets/custome_button.dart';
import '../../widgets/custome_text_filed.dart';

class SetAppointment extends StatefulWidget {
   SetAppointment({super.key});

  @override
  State<SetAppointment> createState() => _SetAppointmentState();
}

class _SetAppointmentState extends State<SetAppointment> {
  bool isloading= false;

   GlobalKey<FormState> formKey=GlobalKey();

   List<String> list = <String>['Online', 'Offline'];

   String dropdownValue = 'Online';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("Set Appointment"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ModalProgressHUD(
          inAsyncCall: isloading,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AuthHead(name: "LOGIN"),
                  CustumeTextField(

                    ispass: false,
                    validetor: (value) {

                    },
                    onchange: (data) {

                    },
                    labelText: 'Date',
                    hint: "12/12/2023",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustumeTextField(
                    validetor: (data) {
                    },
                    onchange: (data) {
                    },
                    hint: "5:30 PM",
                    ispass: false,
                    labelText: 'Time',
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: GetSize.getWidth(context) * 1,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: KBtnColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(
                          Icons.arrow_downward,
                          color: KBtnColor,
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                        list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: 'Set',
                      function: ()  {
                        setAppointment();
                      }),
                  const SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

   setAppointment(){}
}
