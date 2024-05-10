import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';

class QuestionsFieldWidget extends StatelessWidget {
  final int questionNumber;
  final String question;
  QuestionsFieldWidget({
    required this.question,
    required this.questionNumber,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: blackColor.withOpacity(0.1),
          ),
          child: Center(
            child: poppinsText(text: questionNumber.toString()),
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 350.w,
              child: poppinsText(text: question),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 350.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: blackColor),
              ),
              child: TextFormField(
                cursorHeight: 24.h,
                maxLines: 6,
                textAlignVertical: TextAlignVertical.top,
                style: poppinsTextStyle(fontSize: 12.sp),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  border: InputBorder.none,
                  hintText: 'Write your answer',
                  hintStyle: poppinsTextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff7E7E7E),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ],
    );
  }
}
