import 'package:book_share/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishListView extends StatelessWidget {
  const WishListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Center(
          child: Text(
            "Wish List View",
            style: TextStyle(
              color: ColorManager.mainColor,
              fontSize: 35.sp,
            ),
          ),
        ),
      ),
    );
  }
}
