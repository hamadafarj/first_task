import 'package:first_task/app/core/models/mssage.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  const MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: message.senderId == '1'
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (message.senderId == '2')
            CircleAvatar(
              backgroundImage: AssetImage(message.senderPhoto),
            ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: message.senderId == '1'
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: message.senderId == '1'
                          ? const Color(0xFFAFBBC6)
                          : const Color(0xFFF6F6FF),
                      borderRadius: message.senderId == '1'
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )
                          : const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                  child: Text(
                    message.message,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  message.time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          if (message.senderId == '1')
            CircleAvatar(
              backgroundImage: AssetImage(message.senderPhoto),
            ),
        ],
      ),
    );
  }
}
