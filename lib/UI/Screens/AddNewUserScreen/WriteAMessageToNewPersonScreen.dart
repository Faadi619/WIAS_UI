import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/Screens/AddNewUserScreen/AddPersonSuccessfulScreen.dart';
import 'package:wias/UI/Screens/AddNewUserScreen/AnswerQuestionScreen.dart';
import 'package:wias/UI/Screens/NotificationsScreen/NotificationsScreen.dart';

class WriteAMessageToNewPersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      angle: 110,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.send),
                      ),
                    ),
                    poppinsText(
                      text: 'Write A Message',
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
                SizedBox(height: 30.h),
                TextField(
                  maxLines: 10,
                  maxLength: 500,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: poppinsTextStyle(fontSize: 12.sp),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                    hintText: 'Write your message here.......',
                    hintStyle: poppinsTextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff7E7E7E),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                GestureDetector(
                  onTap: () {
                    //TODO: Add function here.
                    Get.to(() => AddPersonSuccessfulScreen());
                  },
                  child: CustomButtonWithCenterTitleWidget(title: 'Submit'),
                ),
                SizedBox(height: 50.h),
                Image.asset(
                  orLineImage,
                  width: 303.w,
                  height: 21.h,
                ),
                SizedBox(height: 30.h),
                GestureDetector(
                  onTap: () {
                    //TODO: Add function here.
                    Get.to(() => AnswerQuestionScreen());
                  },
                  child: Image.asset(
                    answerQuestionsImage,
                    width: 363.w,
                    height: 85.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
