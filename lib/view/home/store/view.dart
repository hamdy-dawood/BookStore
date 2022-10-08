import 'package:book_share/core/color_manager.dart';
import 'package:book_share/shared_widgets/button.dart';
import 'package:book_share/shared_widgets/search.dart';
import 'package:book_share/view/home/store/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreView extends StatelessWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            const CustomSearch(),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: store.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: SizedBox(
                          height: 150.h,
                          width: 100.h,
                          child: Image.asset(
                            store[index].image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            store[index].name,
                            style: TextStyle(
                                color: ColorManager.textColor,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            store[index].subTitle,
                            style: TextStyle(
                              color: ColorManager.textColor.withOpacity(0.5),
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                    4,
                                    (index) => Icon(
                                          Icons.star,
                                          size: 18,
                                          color: ColorManager.mainColor,
                                        )),
                              ),
                              Row(
                                children: List.generate(
                                    2,
                                    (index) => Icon(
                                          Icons.star,
                                          size: 18,
                                          color: ColorManager.textColor
                                              .withOpacity(.3),
                                        )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            store[index].subTitle2,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ColorManager.textColor.withOpacity(0.3),
                              fontSize: 15.sp,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              CustomElevated(
                                press: () {},
                                text: 'Add to cart',
                                fontSize: 12.sp,
                                wSize: 100.h,
                                hSize: 40.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomElevated(
                                press: () {},
                                wSize: 100.w,
                                hSize: 40.w,
                                text: 'Add to wishlist',
                                bgColor: ColorManager.white,
                                textColor: ColorManager.textColor,
                                fontSize: 10.sp,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
