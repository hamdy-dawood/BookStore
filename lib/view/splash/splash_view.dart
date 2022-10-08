import 'dart:async';

import 'package:book_share/core/color_manager.dart';
import 'package:book_share/core/helper_methods.dart';
import 'package:book_share/view/onboarding/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() {
    navigateTo(page: const OnBoardingView(), withHistory: false);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: ColorManager.mainColor,
        child: Stack(
          children: [
            Positioned(
              left: 30.w,
              child: SizedBox(
                height: size.height,
                width: 150.w,
                child: const Image(
                  image: AssetImage("assets/images/splash_img.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 100.h,
                width: 100.h,
                child: const Image(
                  image: AssetImage("assets/images/main_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
