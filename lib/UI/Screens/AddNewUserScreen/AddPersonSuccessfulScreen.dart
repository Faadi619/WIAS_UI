import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/Screens/MainBottomNavigationScreen/MainBottomNavigationScreen.dart';

class AddPersonSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              successfullyAddedPersonImage,
              width: 280.w,
              height: 260.h,
            ),
            SizedBox(height: 60.h),
            poppinsText(
              text: 'Added Successfully',
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15.h),
            poppinsText(
              text: 'A pin is sent to the special persons email',
              fontSize: 18.sp,
              color: Color(0xff7E7E7E),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                poppinsText(
                  text: '1145 ',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                poppinsText(
                  text: 'is your pin',
                  fontSize: 18.sp,
                ),
              ],
            ),
            SizedBox(height: 80.h),
            GestureDetector(
              onTap: () {
                //TODO: Add function here.
                Get.offAll(() => MainBottomNavigationScreen());
              },
              child: CustomButtonWithCenterTitleWidget(title: 'Done'),
            )
          ],
        ),
      ),
    );
  }
}
