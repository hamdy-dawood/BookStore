import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/color_manager.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 45.h,
        width: size.width,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 20.h,
                    child: Image.asset(
                      "assets/images/icons/search.png",
                      color: ColorManager.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                    width: 220.w,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search Books, Authors",
                          hintStyle: TextStyle(
                              fontSize: 18.sp, color: ColorManager.grey),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15.w)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
                width: 20.h,
                child: Image.asset(
                  "assets/images/icons/menu.png",
                  color: ColorManager.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
