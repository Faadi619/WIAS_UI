import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/Screens/AddNewUserScreen/WriteAMessageToNewPersonScreen.dart';
import 'package:wias/UI/Screens/NotificationsScreen/NotificationsScreen.dart';

enum PersonType { special, trusted }

// ignore: must_be_immutable
class AddNewUserScreen extends StatefulWidget {
  @override
  State<AddNewUserScreen> createState() => _AddNewUserScreenState();
}

class _AddNewUserScreenState extends State<AddNewUserScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  PersonType? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: SingleChildScrollView(
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
                        text: 'Add New Person',
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
                  Image.asset(
                    imagePickImage,
                    width: 370.w,
                    height: 200.h,
                  ),
                  SizedBox(height: 25.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: poppinsText(
                      text: 'Enter Details',
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    hintText: 'yourname@gmail.com',
                    leadingIcon: emailIcon,
                    controller: emailController,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFieldWidget(
                    hintText: '@yourname',
                    leadingIcon: personIcon,
                    controller: userNameController,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFieldWidget(
                    hintText: '+92............',
                    leadingIcon: personIcon,
                    controller: numberController,
                  ),
                  SizedBox(height: 35.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: add function here.
                      setState(() {});
                      value = PersonType.special;
                    },
                    child: Container(
                      width: 363.w,
                      height: 63.h,
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffBA4F74).withOpacity(0.31),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: value == PersonType.special
                                  ? Color(0xffBA4F74)
                                  : Colors.transparent,
                              // Color(0xffBA4F74),
                              border: Border.all(
                                color: Color(0xffBA4F74),
                                width: 2.5,
                              ),
                            ),
                          ),
                          SizedBox(width: 25.w),
                          poppinsText(
                            text: 'Special Person',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBA4F74),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: add function here.
                      setState(() {});
                      value = PersonType.trusted;
                    },
                    child: Container(
                      width: 363.w,
                      height: 63.h,
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffC65647).withOpacity(0.31),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: value == PersonType.trusted
                                  ? Color(0xffC65647)
                                  : Colors.transparent,
                              // Color(0xffBA4F74),
                              border: Border.all(
                                color: Color(0xffC65647),
                                width: 2.5,
                              ),
                            ),
                          ),
                          SizedBox(width: 25.w),
                          poppinsText(
                            text: 'Trusted Person',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBA4F74),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  GestureDetector(
                    onTap: () {
                      //TODO: add function here.
                      Get.to(() => WriteAMessageToNewPersonScreen());
                    },
                    child: CustomButtonWithCenterTitleWidget(title: 'Next'),
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

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String leadingIcon;
  final TextEditingController controller;

  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.leadingIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 23.r,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: whiteColor,
          filled: true,
          hintText: hintText,
          hintStyle: poppinsTextStyle(),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Image.asset(
              leadingIcon,
              width: 15.w,
              height: 15.h,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    );
  }
}
