import 'package:book_share/core/color_manager.dart';
import 'package:book_share/shared_widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
              ),
              const CustomSearch(),
              SizedBox(
                height: 30.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
                  labelColor: ColorManager.mainColor,
                  unselectedLabelColor: ColorManager.grey.withOpacity(0.5),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Text(
                      "General",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                    Text(
                      "Most Viewed",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.5,
                      ),
                      itemCount: library.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(8.h),
                        child: Container(
                          decoration: BoxDecoration(
                            color: library[index].color,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(18.w),
                            child: Column(
                              children: [
                                Text(
                                  library[index].name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  child: Image.asset(library[index].image),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "New",
                        style: TextStyle(fontSize: 30.sp),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Most Viewed",
                        style: TextStyle(fontSize: 30.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
