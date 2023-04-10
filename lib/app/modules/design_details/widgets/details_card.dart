import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DetailsCard extends StatelessWidget {
  final String cardTitle;
  final String cardDetails;
  final double cardHight;
  const DetailsCard(
      {super.key,
      required this.cardTitle,
      required this.cardDetails,
      required this.cardHight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              cardTitle,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: cardHight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: const Offset(0, 5), // horizontal, vertical
                ),
              ],
              color: const Color(0xFFF6F7F9),
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding:  EdgeInsets.only(right: 15.h, top: 10,left: 15.h),
            child: Text(
              cardDetails,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Cairo',
                  color: const Color(0xFF5A55C9),
                  fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
