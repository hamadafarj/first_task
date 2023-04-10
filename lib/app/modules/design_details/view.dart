import 'package:first_task/app/modules/chat/view.dart';
import 'package:first_task/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/details_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFF5A55C9), //change your color here
        ),
        title: Text(
          "desgin_name".tr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontFamily: 'Cairo',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/desgin.png",
                  width: MediaQuery.of(context).size.width,
                  height: 200.h,
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.defaultDialog(
                              titlePadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              title: " ",
                              content: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text("wirte_edit_desgin".tr),
                                          ],
                                        ),
                                      ),
                                      Material(
                                        borderRadius: BorderRadius.circular(50),
                                        elevation: 20.0,
                                        shadowColor: const Color(0xFFF6F7F9),
                                        child: TextFormField(
                                          obscureText: true,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                              hintText: "requird_edits".tr,
                                              fillColor: Colors.white,
                                              filled: true,
                                              contentPadding:
                                                  const EdgeInsets.fromLTRB(
                                                      20.0, 10.0, 20.0, 70.0),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 3.0))),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: () => Get.back(),
                                            child: Container(
                                              width: 120.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    width: 2,
                                                    color:
                                                        const Color(0xFFACACAC),
                                                  )),
                                              child: Center(
                                                child: Text(
                                                  'cancel'.tr,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Cairo',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 120.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Color(0xFFC8C5EF),
                                                    Color(0xFF5A55C9)
                                                  ],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  width: 2,
                                                  color: Colors.white,
                                                )),
                                            child: Center(
                                              child: Text(
                                                'send'.tr,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Cairo',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFDA1200)),
                        ),
                        child: Text(
                          "edit_to_desgin".tr,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF54AE4E)),
                        ),
                        child: Text(
                          "accept_desgin".tr,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const ChatPage());
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF9678F6)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/icons/chat_icon.svg"),
                            Text(
                              "chat".tr,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Cairo',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "desgin_details".tr,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                DetailsCard(
                    cardTitle: "desgin_typs".tr,
                    cardDetails: "منشور",
                    cardHight: 40.h),
                DetailsCard(
                    cardTitle: "dimensions_for_desgin".tr,
                    cardDetails: "سوشيل ميديا",
                    cardHight: 40.h),
                DetailsCard(
                    cardTitle: "write_inside_desgin".tr,
                    cardDetails:
                        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد ",
                    cardHight: 70.h),
                DetailsCard(
                    cardTitle: "write_inside_desgin".tr,
                    cardDetails:
                        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد ",
                    cardHight: 70.h),
                SizedBox(
                  height: 80.h,
                )
              ],
            ),
            const MyBottomNavBar()
          ],
        ),
      ),
    );
  }
}

