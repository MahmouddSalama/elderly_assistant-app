import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/chat_model.dart';
import 'package:elderly_assistant/widgets/chat_buble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

   ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controlerjf = ScrollController();

  TextEditingController controller = TextEditingController();

 List<MessageModel> messages=[
   MessageModel(uid: "uid", time: 'time', messgae: 'messgae1'),
   MessageModel(uid: "uid1", time: 'time', messgae: 'messgae2'),
   MessageModel(uid: "uid", time: 'time', messgae: 'messgae3'),
   MessageModel(uid: "uid1", time: 'time', messgae: 'messgae4'),
 ];
  String? text;
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: KBtnColor,
        elevation: 0,
      ),
      backgroundColor:KprimaryColor ,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: controlerjf,
              physics: const BouncingScrollPhysics(),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context,i){
                return ChatBuble(
                  message: messages[i],
                );
              },
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:controller ,
              onChanged: (data) {

                setState(() {});
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Send Message",
                suffixIcon:loading? CircularProgressIndicator(color: KBtnColor,) :  IconButton(
                  onPressed: ()async {
                    controlerjf.animateTo(
                      controlerjf.position.minScrollExtent,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );

                    controller.clear();
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Color(0xff314F6A),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff314F6A),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff314F6A),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
