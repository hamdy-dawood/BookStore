import 'package:book_share/core/color_manager.dart';
import 'package:book_share/core/helper_methods.dart';
import 'package:book_share/shared_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../start/view.dart';
import 'model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingView> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  navigateTo(page: const StartView(), withHistory: false);
                },
                child: Text(
                  "skip",
                  style: TextStyle(fontSize: 22.sp, color: ColorManager.grey),
                )),
          ),
          SizedBox(
            height: 50.h,
          ),
          Stack(
            children: [
              SizedBox(
                height: size.height * 0.70.h,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    controller.currentPage = value;
                    setState(() {});
                  },
                  children: List.generate(
                      controller.model.length,
                      (index) => SingleChildScrollView(
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.0.w),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Image.asset(
                                      controller
                                          .model[controller.currentPage].image,
                                      height: size.height * 0.25.h,
                                      width: size.width,
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      controller
                                          .model[controller.currentPage].title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: ColorManager.textColor,
                                          fontSize: 22.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              controller.model.length,
                              (index) => Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        end: 5),
                                    child: CircleAvatar(
                                      radius: 5.r,
                                      backgroundColor: Color(
                                          index == controller.currentPage
                                              ? 0xffFF6EA1
                                              : 0xffF5C3C7),
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      controller.currentPage == controller.model.length - 1
                          ? CustomElevated(
                              press: () {
                                navigateTo(
                                    page: const StartView(),
                                    withHistory: false);
                              },
                              text: 'Get Started',
                            )
                          : const Text(""),
                      SizedBox(
                        height: size.height * 0.20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
