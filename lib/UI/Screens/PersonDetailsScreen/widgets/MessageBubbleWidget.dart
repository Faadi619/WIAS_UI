import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';

class MessageBubbleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: 'I have added that you take fido, i now you have always liked him. '
          'i think your are an amazing friend and if i never get a chance to '
          'tell you',
      textStyle: poppinsTextStyle(
        color: whiteColor,
        fontSize: 16.sp,
      ),
      color: primaryPurpleColor,
      constraints: BoxConstraints(maxWidth: 1.sw),
      tail: true,
      isSender: false,
    );
  }
}
