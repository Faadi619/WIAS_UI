import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';
import 'package:wias/UI/Screens/SubscriptionScreens/SubscriptionScreen.dart';

TextEditingController otpController = TextEditingController();

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool timerActive = false;
  int _secondsRemaining = 60;
  late Timer _timer;

  void startTimer() {
    _secondsRemaining = 60;
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timerActive = true;
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
          print('$_secondsRemaining seconds remaining');
        } else {
          timerActive = false;
          _timer.cancel(); // Stop the timer when countdown reaches 0
          print('Timer completed');
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

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
                      text: 'OTP Verification',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 18.h),
                    poppinsText(
                      textAlign: TextAlign.center,
                      text:
                          'Enter the verification code we just sent on your phone number.',
                      fontSize: 14.sp,
                    ),
                    SizedBox(height: 20.h),
                    OtpTextField(
                      numberOfFields: 4,
                      filled: true,
                      fillColor: whiteColor,
                      fieldHeight: 70.w,
                      fieldWidth: 70.w,
                      borderColor: primaryPurpleColor,
                      keyboardType: TextInputType.number,
                      enabledBorderColor: Color(0xffBABABA),
                      focusedBorderColor: primaryPurpleColor,
                      showFieldAsBox: true,
                      textStyle: poppinsTextStyle(
                        fontSize: 22.sp,
                        color: primaryPurpleColor,
                        fontWeight: FontWeight.bold,
                      ),
                      //runs when every textfield is filled
                      // onSubmit: (String verificationCode) {
                      //   showDialog(
                      //       context: context,
                      //       builder: (context) {
                      //         return AlertDialog(
                      //           title: Text("Verification Code"),
                      //           content: Text('Code entered is $verificationCode'),
                      //         );
                      //       });
                      // }, // end onSubmit
                    ),
                    SizedBox(height: 50.h),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add function here.
                        Get.to(() => SubscriptionScreen());
                      },
                      child:
                          CustomButtonWithCenterTitleWidget(title: 'Continue'),
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        poppinsText(text: 'Resend codes in '),
                        timerActive
                            ? poppinsText(
                                text: '$_secondsRemaining',
                                color: primaryPurpleColor,
                              )
                            : GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  //TODO: add function here
                                  startTimer();
                                },
                                child: poppinsText(
                                  text: 'Resend',
                                  color: primaryPurpleColor,
                                ),
                              ),
                      ],
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
