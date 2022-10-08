import 'package:book_share/core/color_manager.dart';
import 'package:book_share/core/helper_methods.dart';
import 'package:book_share/shared_widgets/button.dart';
import 'package:book_share/view/home/nav_bar/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model.dart';

class StartView extends StatefulWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: SizedBox(
        height: 100.h,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "More Topics",
                    style: TextStyle(
                      color: ColorManager.mainColor,
                      fontSize: 18.sp,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                CustomElevated(
                  press: () {
                    navigateTo(page: const NavBarView());
                  },
                  text: "Apply",
                  wSize: 300.w,
                  hSize: 50.w,
                  fontSize: 25.sp,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Container(
              height: 150.h,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/main_home_img.png"),
                    fit: BoxFit.fill),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    "Welcome\nChoose the topics",
                    style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1 / 1.5,
                ),
                itemCount: topic.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      topic[index].isChoose = !topic[index].isChoose;
                      // isChoose = !isChoose;
                    });
                  },
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 90.h,
                            width: 90.h,
                            child: Image.asset(topic[index].image),
                          ),
                          topic[index].isChoose
                              ? SizedBox(
                                  height: 90.h,
                                  width: 90.h,
                                  child: Image.asset(
                                      "assets/images/topics/choose_topic.png"),
                                )
                              : SizedBox(
                                  height: 90.h,
                                  width: 90.h,
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        topic[index].name,
                        style: TextStyle(
                            color: ColorManager.textColor, fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
