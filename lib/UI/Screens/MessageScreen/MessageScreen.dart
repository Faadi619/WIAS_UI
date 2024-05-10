import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/Core/Constants/colors.dart';
import 'package:wias/UI/CustomWidgets/SearchBarWidget.dart';
import 'package:wias/UI/Screens/MessageScreen/MessageDetailsScreen.dart';
import 'package:wias/UI/Screens/NotificationsScreen/NotificationsScreen.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //<<<<<ONLY FOR ALignment<<<<<
                    Icon(Icons.send, color: Colors.transparent),
                    poppinsText(
                      text: 'Messages',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => NotificationsScreen());
                      },
                      child: Image.asset(
                        notificationIcon,
                        width: 36.w,
                        height: 36.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                SearchBarWidget(
                  searchController: searchController,
                  width: 387.w,
                ),
                SizedBox(height: 17.w),
                poppinsText(
                  text: 'Messages you want to convey to love ones',
                  fontSize: 16.sp,
                  color: Color(0xff7E7E7E),
                ),
                SizedBox(height: 30.w),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MessageDetailsScreen());
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.bottomRight,
                            children: [
                              BubbleSpecialThree(
                                text:
                                    'I have added that you take fido, i now you have always liked him. '
                                    'i think your are an amazing friend and if i never get a chance to '
                                    'tell youI have added that you take fido, i now you have always liked him. '
                                    'i think your are an amazing friend and if i never get a chance to '
                                    'tell you',
                                textStyle: poppinsTextStyle(
                                  color: whiteColor,
                                  fontSize: 16.sp,
                                ),
                                color: primaryPurpleColor,
                                constraints: BoxConstraints(maxWidth: 1.sw),
                                tail: true,
                                isSender: false,
                              ),
                              Positioned(
                                bottom: -10.h,
                                right: 65.w,
                                child: Container(
                                  width: 29.w,
                                  height: 29.w,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(personImage),
                                ),
                              ),
                              Positioned(
                                bottom: -10.h,
                                right: 45.w,
                                child: Container(
                                  width: 29.w,
                                  height: 29.w,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(lollaSmithImage),
                                ),
                              ),
                              Positioned(
                                bottom: -10.h,
                                right: 25.w,
                                child: Container(
                                  width: 29.w,
                                  height: 29.w,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(personImage),
                                ),
                              ),
                              Positioned(
                                bottom: -10.h,
                                right: 5.w,
                                child: Container(
                                  width: 29.w,
                                  height: 29.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffE4E4E4),
                                  ),
                                  child: Center(
                                    child: poppinsText(
                                      text: '+2',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff767676),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
