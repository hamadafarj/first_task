import 'package:first_task/app/core/models/design_model.dart';
import 'package:first_task/app/modules/desgin_order/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                            onPressed: () {},
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
                    " عدد التصاميم المتاحة هو  5",
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
                    )),
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
                  InkWell(
                    onTap: () {
                      Get.to(() => const OrderDesgin());
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
        //  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEAEAF8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 35,
                  color: Color(0xFF5A55C9),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings,
                    size: 35, color: Color(0xFF707070))),
          ],
        ),
      ),
    );
  }
}
