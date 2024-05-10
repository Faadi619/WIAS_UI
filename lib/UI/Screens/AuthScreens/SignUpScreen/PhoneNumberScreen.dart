import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAuthBackgroundWidget.dart';
import 'package:wias/UI/Screens/AuthScreens/SignUpScreen/OTPScreen.dart';

TextEditingController phoneNumberController = TextEditingController();

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

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
                      text: 'Create an account',
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: poppinsText(
                        text: 'Phone Number',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    IntlPhoneField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      showDropdownIcon: false,
                      decoration: InputDecoration(
                        hintText: 'Input your number',
                        hintStyle: poppinsTextStyle(
                          fontSize: 16.sp,
                          color: blackColor.withOpacity(0.4),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(height: 50.h),
                    GestureDetector(
                      onTap: () {
                        //TODO: Add function here.
                        Get.to(() => OTPScreen());
                      },
                      child:
                          CustomButtonWithCenterTitleWidget(title: 'Continue'),
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
                    SizedBox(height: 25.h),
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
