import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/Model/PersonDetailsModel.dart';
import 'package:wias/UI/Screens/NotificationsScreen/NotificationsScreen.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/PersonDetailsScreen.dart';
import 'package:wias/UI/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:wias/UI/Screens/SearchScreen/SearchScreen.dart';
import 'package:wias/UI/Screens/SpecialPersonScreen/SpecialPersonScreen.dart';
import 'package:wias/UI/Screens/TrustedPeopleScreen/TrustedPeopleScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ProfileScreen());
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                profileImage,
                                width: 47.w,
                                height: 47.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  poppinsText(
                                    text: 'Adam Smith',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  poppinsText(
                                    text: 'Free Member',
                                    fontSize: 10.sp,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                //TODO: add function here
                                Get.to(() => SearchScreen());
                              },
                              child: Image.asset(
                                searchIcon,
                                width: 36.w,
                                height: 36.w,
                              ),
                            ),
                            SizedBox(width: 6.w),
                            GestureDetector(
                              onTap: () {
                                //TODO: Add function here
                                Get.to(() => NotificationsScreen());
                              },
                              child: Image.asset(
                                notificationIcon,
                                width: 36.w,
                                height: 36.w,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        poppinsText(
                          text: 'Good Morning,',
                          fontSize: 21.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        poppinsText(
                          text: 'Adams',
                          fontSize: 21.sp,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            openQuoteIcon,
                            width: 20.w,
                            height: 20.w,
                          ),
                        ),
                        poppinsText(
                          textAlign: TextAlign.center,
                          fontSize: 16.sp,
                          color: Color(0xff585858),
                          text: 'Someone sitting in the shades today because '
                              'someone planted a tree along time ago '
                              '-Warren buffett.',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            closeQuoteIcon,
                            width: 20.w,
                            height: 20.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        poppinsText(
                          text: 'Trusted People',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            //TODO: add function here
                            Get.to(() => TrustedPeopleScreen());
                          },
                          child: poppinsText(
                            text: 'See All',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 1.sw,
                    height: 180.h,
                    child: ListView.builder(
                      itemCount: personDataList.length,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              () => PersonDetailsScreen(
                                index: index,
                                personType: 'Trusted People',
                              ),
                            );
                          },
                          child: Container(
                            width: 150.w,
                            height: 170.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              color: greyColor.withOpacity(0.26),
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  personDataList[index].image,
                                  width: 100.w,
                                  height: 100.w,
                                ),
                                SizedBox(height: 5.h),
                                poppinsText(
                                  text: personDataList[index].name,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        poppinsText(
                          text: 'Special People',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            //TODO: add function here
                            Get.to(() => SpecialPersonScreen());
                          },
                          child: poppinsText(
                            text: 'See All',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 1.sw,
                    height: 180.h,
                    child: ListView.builder(
                      itemCount: personDataList.length,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              () => PersonDetailsScreen(
                                index: index,
                                personType: 'Special People',
                              ),
                            );
                          },
                          child: Container(
                            width: 150.w,
                            height: 170.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              color: greyColor.withOpacity(0.26),
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  personDataList[index].image,
                                  width: 100.w,
                                  height: 100.w,
                                ),
                                SizedBox(height: 5.h),
                                poppinsText(
                                  text: personDataList[index].name,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
