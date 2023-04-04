import 'package:first_task/app/core/models/design_model.dart';
import 'package:first_task/app/modules/chat/view.dart';
// import 'package:first_task/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/card_widget.dart';
import 'widgets/statistic_canvas_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final myController = Get.find<MyController>();
    final List<DesignModel> myModels = [
      DesignModel(
          name: "Design 1",
          description: "This is a sample description for Design 1",
          time: "10:00 AM",
          date: "Sunday, September 5",
          attachmentCount: 2,
          isReceive: true),
      DesignModel(
          name: "Design 2",
          description: "This is a sample description for Design 2",
          time: "2:30 PM",
          date: "Tuesday, October 12",
          attachmentCount: 1,
          isReceive: false),
      DesignModel(
          name: "Design 3",
          description: "This is a sample description for Design 3",
          time: "9:15 AM",
          date: "Friday, December 3",
          attachmentCount: 0,
          isReceive: true),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " أهلاً user name",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Cairo',
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              // if (Intl.getCurrentLocale() == "ar") {
                              //   myController.changeLanguage("en", "US");
                              // } else {
                              //   myController.changeLanguage("ar", "PS");
                              // }
                              //       print("object ${Intl.getCurrentLocale() == "ar"}");
                              // Intl.getCurrentLocale() == "ar"
                              //     ? myController.changeLanguage("en", "US")
                              //     : myController.changeLanguage("ar", "PS");
                            },
                            icon: SvgPicture.asset(
                                "assets/icons/language_icon.svg"))
                      ],
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "hello".tr,
                    //    " عدد التصاميم المتاحة هو  5".tr,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/increment.svg",
                            height: 30.h, width: 30.w, fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                        child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xff5A55C9),
                                )),
                            child:const StatisticCanvas(maxValue: 12, value: 7))),
                    SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/icons/decrement_icon.svg",
                            height: 30.h,
                            width: 30.w,
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //  myController.changeLanguage("ar", "PS");
                      // Get.to(() => const OrderDesgin());
                    },
                    child: Container(
                      width: 240.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xFFC8C5EF), Color(0xFF5A55C9)],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          )),
                      child: Center(
                        child: Text(
                          'اطلب تصميمك الآن ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "التصاميم الحالية ",
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: myModels.length,
                    itemBuilder: (BuildContext context, int index) {
                      final DesignModel model = myModels[index];
                      return Column(
                        children: [
                          CardWidget(
                            design: model,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
          // MyBottomNavBarText()
          const MyBottomNavBar()
        ],
      ),
    );
  }
}

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEAEAF8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Get.to(const HomePage());
                },
                icon: const Icon(
                  Icons.home,
                  size: 35,
                  color: Color(0xFF5A55C9),
                )),
            IconButton(
                onPressed: () {
                  Get.to(const ChatPage());
                },
                icon: const Icon(Icons.settings,
                    size: 35, color: Color(0xFF707070))),
          ],
        ),
      ),
    );
  }
}
