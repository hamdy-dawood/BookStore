import 'package:book_share/core/color_manager.dart';
import 'package:book_share/shared_widgets/search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../start/model.dart';
import 'model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 420.h,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/main_home_img.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.h,
                    ),
                    const CustomSearch(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          "Our Top Picks",
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 250.h,
                      child: CarouselSlider(
                          options: CarouselOptions(
                            height: 300.h,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayInterval: const Duration(seconds: 2),
                          ),
                          items: [
                            Column(
                              children: [
                                SizedBox(
                                    height: 200.h,
                                    width: 150.h,
                                    child: Image.asset(
                                      picks[0].image,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  picks[0].name,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 200.h,
                                    width: 150.h,
                                    child: Image.asset(
                                      picks[1].image,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  picks[1].name,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 200.h,
                                    width: 150.h,
                                    child: Image.asset(picks[2].image,
                                        fit: BoxFit.fill)),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  picks[2].name,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 200.h,
                                    width: 150.h,
                                    child: Image.asset(picks[3].image,
                                        fit: BoxFit.fill)),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  picks[3].name,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 200.h,
                                    width: 150.h,
                                    child: Image.asset(picks[4].image,
                                        fit: BoxFit.fill)),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  picks[4].name,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.textColor,
                            radius: 36.r,
                            child: Icon(
                              Icons.add,
                              color: ColorManager.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Add",
                            style: TextStyle(
                              color: ColorManager.textColor,
                              fontSize: 15.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: topic.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            SizedBox(
                                height: 70.h,
                                width: 70.h,
                                child: Image.asset(topic[index].image)),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              topic[index].name,
                              style: TextStyle(
                                color: ColorManager.textColor,
                                fontSize: 15.sp,
                              ),
                            )
                          ],
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Trending Books",
                    style: TextStyle(
                      color: ColorManager.textColor,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 360.h,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1 / 1.7,
                  ),
                  itemCount: trendingBook.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 90.h,
                      width: 90.h,
                      child: Image.asset(trendingBook[index].image),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best Share",
                    style: TextStyle(
                      color: ColorManager.textColor,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestShare.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                          height: 170.h,
                          width: 120.h,
                          child: Image.asset(
                            bestShare[index].image,
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        bestShare[index].name,
                        style: TextStyle(
                          color: ColorManager.textColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, bottom: 15.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recently Viewed",
                    style: TextStyle(
                      color: ColorManager.textColor,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: picks.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 170.h,
                            width: 120.h,
                            child: Image.asset(
                              picks[index].image,
                              fit: BoxFit.fill,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          picks[index].name,
                          style: TextStyle(
                            color: ColorManager.textColor,
                            fontSize: 15.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
