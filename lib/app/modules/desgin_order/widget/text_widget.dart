import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  final String cardTitle;
  final String cardDetails;
  final double cardHight;
  final int numLins;

  const TextWidget(
      {super.key,
      required this.cardTitle,
      required this.cardDetails,
      required this.numLins,
      required this.cardHight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5, top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                cardTitle,
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 20.0,
          shadowColor: const Color(0xFFF6F7F9),
          child: TextField(
            maxLines: numLins,
            obscureText: false,
            autofocus: false,
            style: TextStyle(
                color: const Color(0xFFF2F2F2).withOpacity(1),
                fontWeight: FontWeight.w100),
            decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                hintText: cardDetails,
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(
                  top: 10.h,
                  bottom: 10.h,
                  right: 15.7.w,
                  left: 7.w,
                ),
                // contentPadding:EdgeInsets.fromLTRB(20.0, 0.0, 20.0, cardHight),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 3.0))),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
