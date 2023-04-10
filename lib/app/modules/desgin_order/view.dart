import 'package:first_task/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'widget/text_widget.dart';

class OrderDesgin extends StatelessWidget {
  const OrderDesgin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xFF5A55C9),
          ),
          title: Text(
            "desgin_order_details".tr,
            style: TextStyle(
              color: const Color(0xFF5A55C9),
              fontSize: 18.h,
              fontFamily: 'Cairo',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.h),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      cardTitle: "desgin_title".tr,
                      cardDetails:
                          'عنوان التصميم يساعدك بالبحث عن تصميمك مستقبلًا',
                      cardHight: 18.h,
                      numLins: 1,
                    ),
                    TextWidget(
                      cardTitle: "write_inside_desgin".tr,
                      cardDetails:
                          " اكتب لنا كيف تريد التصميم وما هي الكتابة داخله ",
                      cardHight: 90.h,
                      numLins: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "modify_write_desgin".tr,
                          style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 45.h,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: const Color(0xFFE9EAF8),

                             borderRadius: Get.locale?.languageCode == "ar"
                                  ? const BorderRadius.only(
                                     bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                                    )
                                  : const BorderRadius.only(
                                         bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                           
                          ),
                          child: Center(
                              child: Text(
                            "yes".tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Cairo',
                            ),
                          )),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2.2,
                            height: 45.h,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: Get.locale?.languageCode == "ar"
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    )
                                  : const BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                            ),
                            child: Center(
                                child: Text(
                              "no".tr,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Cairo',
                              ),
                            )))
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    DropDownWidget(
                      title: "desgin_typs".tr,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    DropDownWidget(title: "dimensions_for_desgin".tr),
                    SizedBox(
                      height: 17.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "add_logo".tr,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: const Color(0xFFE9EAF8),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/upload_icon.svg"),
                              Text(
                                "add_files".tr,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                              const Text(
                                "Mgاكثر من 1 ",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Cairo',
                                ),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "emergency_desgin".tr,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFA6322),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              )),
                          child: Center(
                            child: Text(
                              "yes_emergency_desgin".tr,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                                fontFamily: 'Cairo',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 2,
                                color: const Color(0xFF5A55C9),
                              )),
                          child: Center(
                            child: Text(
                              "no_emergency_desgin".tr,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8.sp,
                                fontFamily: 'Cairo',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    TextWidget(
                        cardTitle: "notes".tr,
                        cardDetails: "add_notes".tr,
                        numLins: 3,
                        cardHight: 80.h),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      width: 200.w,
                      height: 50.h,
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
                          "send".tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    )
                  ],
                ),
              ),
              const MyBottomNavBar()
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownWidget extends StatelessWidget {
  final String title;
  const DropDownWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: 40.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ], borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Center(
            child: DropdownButtonFormField<String>(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/icons/dropDown_icon.svg"),
              ),
              focusNode: FocusNode(canRequestFocus: false),
              decoration: const InputDecoration.collapsed(hintText: ''),
              hint: Padding(
                padding: EdgeInsets.only(right: 8.w, left: 8.w),
                child: Text("choose_desgin".tr),
              ),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
          ),
        )
      ],
    );
  }
}
