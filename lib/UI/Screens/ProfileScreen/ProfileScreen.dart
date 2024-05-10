import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/Core/Constants/colors.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.rotate(
                            angle: 110,
                            child: GestureDetector(
                              onTap: () {
                                //TODO: add function here.
                                Get.back();
                              },
                              child: Icon(Icons.send),
                            ),
                          ),
                          poppinsText(
                            text: 'Profile',
                            fontSize: 21.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          //ONLY for Alignment
                          Icon(Icons.send, color: Colors.transparent),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Image.asset(
                            lollaSmithImage,
                            width: 136.w,
                            height: 136.w,
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              poppinsText(
                                text: 'Lolla Smith',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 8.h),
                              poppinsText(
                                text: 'lolla_smith@example.com',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(personDetailScreenCurvedImage),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.h),
                      child: poppinsText(
                        text: 'Pin: 1432',
                        color: whiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWithTitleWidget(
                  controller: emailController,
                  hintText: 'yourname@gmail.com',
                  leadingIcon: emailIcon,
                  title: 'Email Address',
                  width: 360.w,
                ),
                SizedBox(height: 20.h),
                CustomTextFieldWithTitleWidget(
                  controller: userNameController,
                  hintText: 'Username',
                  leadingIcon: personIcon,
                  title: 'Username',
                  width: 360.w,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 360.w,
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                CustomTextFieldWithTitleWidget(
                  controller: passwordController,
                  hintText: '**********',
                  leadingIcon: keyIcon,
                  title: 'Password',
                  width: 360.w,
                ),
                SizedBox(height: 40.h),
                GestureDetector(
                  onTap: () {
                    //TODO: add function here.
                    Get.back();
                  },
                  child:
                      CustomButtonWithCenterTitleWidget(title: 'Save Changes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
