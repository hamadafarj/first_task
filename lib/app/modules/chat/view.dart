import 'package:first_task/app/core/models/mssage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'widgets/message_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> _messages = [
    Message(
      senderId: '1',
      senderName: 'John',
      senderPhoto: 'assets/images/test.png',
      message: 'مرحبا......',
      time: '10:00 AM',
    ),
    Message(
      senderId: '2',
      senderName: 'Alice',
      senderPhoto: 'assets/images/gt.png',
      message: 'مرحبا سعيد بالمحادثة معك ثانية',
      time: '10:05 AM',
    ),
    Message(
      senderId: '2',
      senderName: 'Alice',
      senderPhoto: 'assets/images/gt.png',
      message: "هذا النص هو مثال لنص يمكن أن يستبدل في ",
      time: '10:05 AM',
    ),
    Message(
      senderId: '1',
      senderName: 'John',
      senderPhoto: 'assets/images/test.png',
      message: 'شكرا لك!',
      time: '10:10 AM',
    ),
    Message(
      senderId: '2',
      senderName: 'Alice',
      senderPhoto: 'assets/images/gt.png',
      message:
          "ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة",
      time: '10:15 AM',
    ),
     Message(
     senderId: '1',
      senderName: 'John',
      senderPhoto: 'assets/images/test.png',
      message:
          "ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة",
      time: '10:15 AM',
    ),
      Message(
      senderId: '2',
      senderName: 'Alice',
      senderPhoto: 'assets/images/gt.png',
      message: "هذا النص هو مثال لنص يمكن أن يستبدل في ",
      time: '10:05 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color:const Color(0xFFDBE5ED)),
                        color: const Color(0xFFF6F6FF),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/back_icon.svg")),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(_messages[0].senderName),
                                  const Text(
                                    "Online",
                                    style: TextStyle(color: Color(0xFF9B51E0)),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundImage:
                                    AssetImage(_messages[0].senderPhoto),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MessageWidget(message: _messages[index],);
                      },
                    ),
                  ),
                 const SizedBox(height: 100,)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xFFD9DEE4))),
              child: Row(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF9678F6),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: IconButton(
                            icon: SvgPicture.asset(
                              "assets/icons/send_icon.svg",
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.asset("assets/icons/smiles_icon.svg"),
                        onPressed: () {},
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                              "assets/icons/attachment_icon.svg")),
                    ],
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "اكتب رسالة هنا",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/micro_phone_icon.svg"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

