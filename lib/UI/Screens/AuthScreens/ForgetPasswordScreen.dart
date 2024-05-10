import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';

TextEditingController emailController = TextEditingController();

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                      OTPScreenImage,
                      width: 332.w,
                      height: 250.h,
                    ),
                    SizedBox(height: 25.h),
                    poppinsText(
                      text: 'Forget Password',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 18.h),
                    poppinsText(
                      textAlign: TextAlign.center,
                      text:
                          'No worries! Enter your email address below and we will send you a link to reset password.',
                      fontSize: 14.sp,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFieldWithTitleWidget(
                      controller: emailController,
                      hintText: 'yourname@gmail.com',
                      leadingIcon: emailIcon,
                      title: 'Email Address',
                    ),
                    SizedBox(height: 50.h),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add function here.
                        // Get.to(() => SubscriptionScreen());
                      },
                      child:
                          CustomButtonWithCenterTitleWidget(title: 'Continue'),
                    ),
                    SizedBox(height: 18.h),
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
