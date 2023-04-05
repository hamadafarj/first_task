import 'package:first_task/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/text_widget.dart';

class OrderDesgin extends StatelessWidget {
  const OrderDesgin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFF5A55C9),
        ),
        title: const Text(
          "تفاصيل طلب التصميم",
          style: TextStyle(
            color: Color(0xFF5A55C9),
            fontSize: 20,
            fontFamily: 'Cairo',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const TextWidget(
                      cardTitle: "عنوان التصميم",
                      cardDetails:
                          'عنوان التصميم يساعدك بالبحث عن تصميمك مستقبلًا',
                      cardHight: 20.0),
                  const TextWidget(
                      cardTitle: "الكتابة داخل التصميم",
                      cardDetails:
                          " اكتب لنا كيف تريد التصميم وما هي الكتابة داخله ",
                      cardHight: 100.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "هل تود ان نقوم بتعديل الكتابة داخل التصميم حسبما نراه مناسبا؟",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 60,
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
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          "نعم",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Cairo',
                          ),
                        )),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 60,
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
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            "لا",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Cairo',
                            ),
                          )))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DropDownWidget(
                    title: "نوع التصميم ",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DropDownWidget(
                    title: "اختر ابعاد التصاميم المطلوبة",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "أضف  شعار دائم ",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
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
                            const Text(
                              "اسحب الملفات هنا او اضعط للتحميل",
                              style: TextStyle(
                                fontSize: 10,
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
                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "هل التصميم طارئ؟!",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFA6322),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            )),
                        child: const Center(
                          child: Text(
                            "نعم ، تسليم خلال 24 ساعة",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xFF5A55C9),
                            )),
                        child: const Center(
                          child: Text(
                            "لا ليس طارئ - تسليم اقل من 48 ساعة",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                      cardTitle: "ملاحظات اخرى",
                      cardDetails:
                          " اضف ملاحظات اخرى بخصوص التصميم تود ارسالها للطاقم",
                      cardHight: 100.0),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 288,
                    height: 60,
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
                    child: const Center(
                      child: Text(
                        "إرسال",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            const MyBottomNavBar()
          ],
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
              style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 45,
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
              hint: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text('اختر نوع التصميم'),
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
