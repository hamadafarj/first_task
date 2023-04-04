import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StatisticPainter extends CustomPainter {
  final int maxValue;
  final int value;

  StatisticPainter({required this.maxValue, required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff343435);

    final userPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffD168CD);

    final barWidth = size.width / maxValue;

    for (var i = 0; i < maxValue; i++) {
      final barHeight = i < value ? size.height : size.height * 0.75;
      final barColor = i < value ? userPaint : paint;

      canvas.drawRect(
        Rect.fromLTWH(i * barWidth, size.height - barHeight, barWidth, barHeight),
        barColor,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class StatisticCanvas extends StatelessWidget {
  final int maxValue;
  final int value;

  const StatisticCanvas({super.key, required this.maxValue, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
      child: Row(
        children: List.generate(
          maxValue,
          (index) => Stack(
            children: [
              Column(
                children: [
               index == value - 1? 
               Padding(
                 padding: const EdgeInsets.all(1.5),
                 child: SvgPicture.asset("assets/icons/Indicator.svg",height: 12,width: 15,),
               )
                :const Text(""),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          height: 20.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index < value ? const Color(0xffD168CD) : const Color(0xff343435),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          height: 12.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index < value ? const Color(0xffD168CD) : const Color(0xff343435),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
