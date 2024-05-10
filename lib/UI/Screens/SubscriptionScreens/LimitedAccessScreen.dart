import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';
import 'package:wias/UI/Screens/QuestionsScreens/QuestionsScreens.dart';

class LimitedAccessScreen extends StatelessWidget {
  const LimitedAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GlobalAuthBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100.h),
                  Image.asset(
                    freeTrialImage,
                    width: 270.w,
                    height: 270.w,
                  ),
                  SizedBox(height: 30.h),
                  poppinsText(
                    text: 'Limited Access',
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 30.h),
                  poppinsText(
                    text: 'Limited access to app includes following features',
                  ),
                  SizedBox(height: 30.h),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined, size: 22.sp),
                          SizedBox(width: 5.w),
                          poppinsText(
                            text: 'Add 01 Special People',
                            fontSize: 16.sp,
                            color: Color(0xff585858),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined, size: 22.sp),
                          SizedBox(width: 5.w),
                          poppinsText(
                            text: 'Upto 04 Trusted Contacts',
                            fontSize: 16.sp,
                            color: Color(0xff585858),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined, size: 22.sp),
                          SizedBox(width: 5.w),
                          poppinsText(
                            text: 'Messages space upto 500 characters',
                            fontSize: 16.sp,
                            color: Color(0xff585858),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 80.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: add function here
                      Get.offAll(() => QuestionsScreens());
                    },
                    child: CustomButtonWithCenterTitleWidget(title: 'Continue'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
