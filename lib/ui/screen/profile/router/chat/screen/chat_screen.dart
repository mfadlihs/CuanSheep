import 'package:cuan_sheep/ui/screen/profile/router/chat/widget/buble_chat.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/profile_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryColor,
        appBar: ProfileAppbar(),
        body: Stack(
          children: [
            Container(
              width: 100.w,
              color: ColorConstants.primaryColor,
              constraints: BoxConstraints(
                minHeight: 100.h,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: ColorConstants.backgroundColor,
                    ),
                    width: 100.w,
                    constraints: BoxConstraints(minHeight: 100.h),
                    child: Column(
                      children: [
                        BubleWidget(
                            text: "Hai, ada yang bisa saya bantu ?",
                            isUser: false),
                        BubleWidget(
                          text: "Saya Ingin bertanya seputar kandang",
                          isUser: true,
                        ),
                        BubleWidget(
                          text: "Silahkan dengan senang hati",
                          isUser: false,
                        ),
                        BubleWidget(
                          text: "Saya ingin invetasi gmn ya caranya",
                          isUser: true,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 0.95),
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                color: ColorConstants.backgroundColor,
                height: 60,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff24282C).withOpacity(0.5),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: ColorConstants.primaryColor,
                      elevation: 0,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(-45 / 360),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
