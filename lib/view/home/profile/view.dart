import 'package:book_share/core/color_manager.dart';
import 'package:book_share/shared_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 190.h,
                      width: size.width,
                    ),
                    SizedBox(
                        height: 150.h,
                        width: size.width,
                        child: Image.asset(
                          "assets/images/main_home_img.png",
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                      left: 0,
                      top: 70.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(
                          "Hamdy Dawood",
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: CircleAvatar(
                            radius: 50.r,
                            backgroundImage:
                                const AssetImage("assets/images/hamdy_img.jpg"),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "21",
                          style: TextStyle(
                              color: ColorManager.textColor,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Books",
                          style: TextStyle(
                            color: ColorManager.textColor.withOpacity(.5),
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "50K",
                          style: TextStyle(
                              color: ColorManager.textColor,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: ColorManager.textColor.withOpacity(.5),
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "28",
                          style: TextStyle(
                              color: ColorManager.textColor,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: ColorManager.textColor.withOpacity(.5),
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    CustomElevated(
                      press: () {},
                      text: "Edit Profile",
                      wSize: 120.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Text(
                      "Account",
                      style: TextStyle(
                        color: ColorManager.textColor.withOpacity(.5),
                        fontSize: 25.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 190.h,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: account.length,
                    itemBuilder: (context, index) => Ink(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {},
                        leading: SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: Image.asset(
                            account[index].image,
                            color: ColorManager.mainColor,
                          ),
                        ),
                        title: Text(
                          account[index].name,
                          style: TextStyle(
                            color: ColorManager.textColor,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 2.h,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        color: ColorManager.textColor.withOpacity(.5),
                        fontSize: 25.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 300.h,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: settings.length,
                    itemBuilder: (context, index) => Ink(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {},
                        leading: SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: Image.asset(
                            settings[index].image,
                          ),
                        ),
                        title: Text(
                          settings[index].name,
                          style: TextStyle(
                            color: ColorManager.textColor,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 2.h,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
