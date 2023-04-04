import 'package:first_task/app/core/models/design_model.dart';
import 'package:first_task/app/modules/design_details/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.design}) : super(key: key);

  final DesignModel design;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const DetailsPage());
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(clipBehavior: Clip.antiAliasWithSaveLayer, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120.h,
            color: const Color(0xFFF1F1FE),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    design.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Cairo',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    design.description,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Cairo',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/icons/time_icon.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                          ),
                          Text(
                            design.time,
                            style: TextStyle(
                                color: const Color(
                                  0xFFA6A6A6,
                                ),
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/icons/calender_icon.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                          ),
                          Text(
                            design.date,
                            style: TextStyle(
                                color: const Color(
                                  0xFFA6A6A6,
                                ),
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/icons/attachment_icon.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                          ),
                          Text(
                            design.attachmentCount.toString(),
                            style: TextStyle(
                                color: const Color(
                                  0xFFA6A6A6,
                                ),
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: -170.h,
            bottom: 40.h,
            left: Get.locale?.languageCode == "ar" ? -440.w : 0,
            right: Get.locale?.languageCode == "ar" ? 0 : -440.w,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: design.isReceive
                    ? const Color(0XFF00A875)
                    : const Color(0xffDA1200),
              ),
            ),
          ),
          Positioned(
            top: 20.h,
            left: Get.locale?.languageCode == "ar"
                ? 18
                : MediaQuery.of(context).size.width * 0.86,
            child: Text(
              design.isReceive ? "مستلم" : "تعديل",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
