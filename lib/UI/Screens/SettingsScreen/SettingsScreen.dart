import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/Screens/AdminChatScreen/AdminChatScreen.dart';
import 'package:wias/UI/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:wias/UI/Screens/SettingsScreen/widgets/LogoutSheetWidget.dart';
import 'package:wias/UI/Screens/SettingsScreen/widgets/SettingsCardOptionWidget.dart';
import 'package:wias/UI/Screens/TermsAndConditionsScreen/TermsAndConditionsScreen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalAppBackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  poppinsText(
                    text: 'Settings',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 26.h),
                  Image.asset(
                    personImage,
                    width: 136.w,
                    height: 136.w,
                  ),
                  SizedBox(height: 16.h),
                  poppinsText(
                    text: 'Jon Doe',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 38.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      //TODO: Add function here.
                      Get.to(() => ProfileScreen());
                    },
                    child: SettingsCardOptionWidget(
                      leadingIcon: personIcon,
                      title: 'Profile',
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      //TODO: Add function here.
                    },
                    child: SettingsCardOptionWidget(
                      leadingIcon: shareIcon,
                      title: 'Share app',
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      //TODO: Add function here.
                      Get.to(() => AdminChatScreen());
                    },
                    child: SettingsCardOptionWidget(
                      leadingIcon: chatIcon,
                      title: 'Chat With Admin',
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      //TODO: Add function here.
                      Get.to(() => TermsAndConditionsScreen());
                    },
                    child: SettingsCardOptionWidget(
                      leadingIcon: termsIcon,
                      title: 'Terms & Conditions',
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      //TODO: Add function here.
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return LogoutSheetWidget();
                        },
                      );
                    },
                    child: SettingsCardOptionWidget(
                      leadingIcon: logoutIcon,
                      title: 'Logout',
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
