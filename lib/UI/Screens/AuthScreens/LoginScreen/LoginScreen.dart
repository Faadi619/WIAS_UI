import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';
import 'package:wias/UI/Screens/AuthScreens/ForgetPasswordScreen.dart';
import 'package:wias/UI/Screens/AuthScreens/SignUpScreen/SignUpScreen.dart';
import 'package:wias/UI/Screens/MainBottomNavigationScreen/MainBottomNavigationScreen.dart';

TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GlobalAuthBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 1.sh,
                width: 1.sw,
                child: Column(
                  children: [
                    SizedBox(height: 100.h),
                    Image.asset(
                      appLogo,
                      width: 150.w,
                      height: 190.h,
                    ),
                    SizedBox(height: 25.h),
                    poppinsText(
                      text: 'Welcome Back!',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 18.h),
                    poppinsText(
                      text: 'welcome back we missed you',
                      fontSize: 14.sp,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFieldWithTitleWidget(
                      title: 'Username',
                      hintText: 'Username',
                      controller: userNameController,
                      leadingIcon: personIcon,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFieldWithTitleWidget(
                      title: 'Password',
                      hintText: 'Password',
                      controller: passwordController,
                      leadingIcon: keyIcon,
                      canObsecureText: true,
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          //TODO: Add function here.
                          Get.to(() => ForgetPasswordScreen());
                        },
                        child: poppinsText(
                          text: 'Forgot Password?',
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    GestureDetector(
                      onTap: () {
                        //TODO: add function here.
                        Get.offAll(() => MainBottomNavigationScreen());
                      },
                      child:
                          CustomButtonWithCenterTitleWidget(title: 'Sign in'),
                    ),
                    SizedBox(height: 18.h),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        //TODO: Add function here.
                      },
                      child: poppinsText(
                        text: 'or continue with',
                        fontSize: 11.sp,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add function here.
                      },
                      child: Image.asset(
                        googleIcon,
                        width: 58.w,
                        height: 58.w,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SafeArea(
                      top: false,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          poppinsText(text: 'Don\'t have an account? '),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              //TODO: Add function here.
                              Get.to(() => SignUpScreen());
                            },
                            child: poppinsText(
                              text: 'Signup',
                              color: primaryPurpleColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
