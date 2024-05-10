import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';
import 'package:wias/UI/Screens/AuthScreens/LoginScreen/LoginScreen.dart';
import 'package:wias/UI/Screens/AuthScreens/SignUpScreen/PhoneNumberScreen.dart';

TextEditingController emailController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GlobalAuthBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: SingleChildScrollView(
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
                      text: 'Let’s fill in your details',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 18.h),
                    poppinsText(
                      textAlign: TextAlign.center,
                      text:
                          'Get access to our helpful guides, podcasts and videos '
                          'and start taking control of your life today',
                      fontSize: 14.sp,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFieldWithTitleWidget(
                      title: 'Email Adress',
                      hintText: 'yourname@gmail.com',
                      controller: emailController,
                      leadingIcon: emailIcon,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFieldWithTitleWidget(
                      title: 'Your Name',
                      hintText: '@yourname',
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
                    CustomTextFieldWithTitleWidget(
                      title: 'Confirm Password',
                      hintText: 'Confirm Password',
                      controller: confirmPasswordController,
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
                        Get.offAll(() => PhoneNumberScreen());
                      },
                      child:
                          CustomButtonWithCenterTitleWidget(title: 'Sign up'),
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
                    SizedBox(height: 30.h),
                    SafeArea(
                      top: false,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          poppinsText(text: 'Already have an account? '),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              //TODO: Add function here.
                              Get.offAll(() => LoginScreen());
                            },
                            child: poppinsText(
                              text: 'Log in',
                              color: primaryPurpleColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
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
