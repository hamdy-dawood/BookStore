import 'package:book_share/core/color_manager.dart';
import 'package:book_share/view/home/discover/view.dart';
import 'package:book_share/view/home/library/view.dart';
import 'package:book_share/view/home/profile/view.dart';
import 'package:book_share/view/home/store/view.dart';
import 'package:book_share/view/home/wish_list/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentIndex = 0;
  List screens = const [
    HomeView(),
    LibraryView(),
    WishListView(),
    StoreView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 85.h,
        child: BottomNavigationBar(
          unselectedItemColor: ColorManager.grey.withOpacity(0.5),
          backgroundColor: ColorManager.white,
          selectedItemColor: ColorManager.mainColor,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: Image.asset("assets/images/icons/search.png")),
                ),
                label: 'Discover'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: Image.asset("assets/images/icons/library.png")),
                ),
                label: 'Library'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: Image.asset("assets/images/icons/wishlist.png")),
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: Image.asset("assets/images/icons/store.png")),
                ),
                label: 'Store'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: Image.asset("assets/images/icons/profile.png")),
                ),
                label: 'Profile'),
          ],
          type: BottomNavigationBarType.fixed,
          elevation: 15.0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
