import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/Core/Constants/colors.dart';
import 'package:wias/Model/PersonDetailsModel.dart';
import 'package:wias/UI/CustomWidgets/CustomButtonWidgetCenterTitleWidget.dart';
import 'package:wias/UI/CustomWidgets/CustomTransparentButtonWithCenterTitle.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/widgets/MessageBubbleWidget.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/widgets/RemoveMessageDialogueWidget.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/widgets/RemovePersonDialogueBox.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/widgets/RevealPinDialogueBox.dart';

class PersonDetailsScreen extends StatelessWidget {
  final int index;
  final String personType;

  const PersonDetailsScreen({
    super.key,
    required this.index,
    required this.personType,
  });

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
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                            text: personType,
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
                            personDataList[index].image,
                            width: 136.w,
                            height: 136.w,
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              poppinsText(
                                text: personDataList[index].name,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 8.h),
                              poppinsText(
                                text: personDataList[index].email,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            RevealPinDialogueBox(),
                                      );
                                    },
                                    child: CustomButtonWithCenterTitleWidget(
                                      width: 87.w,
                                      height: 31.h,
                                      borderRadius: 10.r,
                                      titleFontSize: 12.sp,
                                      title: 'Reveal Pin',
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            RemovePersonDialogueBox(),
                                      );
                                    },
                                    child:
                                        CustomTransparentButtonWithCenterTitle(
                                      width: 87.w,
                                      height: 31.h,
                                      borderRadius: 10.r,
                                      titleFontSize: 12.sp,
                                      title: 'Remove',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
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
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          poppinsText(
                            text: 'Message',
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              //TODO: add function here.
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    RemoveMessageDialogueWidget(),
                              );
                            },
                            child: Image.asset(
                              deleteIconRed,
                              width: 20.w,
                              height: 20.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return MessageBubbleWidget();
                        },
                      ),
                    ],
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
