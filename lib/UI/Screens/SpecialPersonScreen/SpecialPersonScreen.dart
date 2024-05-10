import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/CustomWidgets/PersonCardWidget.dart';
import 'package:wias/UI/CustomWidgets/SearchBarWidget.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/PersonDetailsScreen.dart';

TextEditingController searchController = TextEditingController();

class SpecialPersonScreen extends StatelessWidget {
  const SpecialPersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                          //TODO: add function here.
                          Get.back();
                        },
                        child: Icon(Icons.send),
                      ),
                    ),
                    poppinsText(
                      text: 'Special People',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    //ONLY for Alignment
                    Icon(Icons.send, color: Colors.transparent),
                  ],
                ),
                SizedBox(height: 40.h),
                SearchBarWidget(
                  searchController: searchController,
                  width: 387.w,
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: 16,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              () => PersonDetailsScreen(
                                index: index,
                                personType: 'Trusted',
                              ),
                            );
                          },
                          child: PersonCardWidget(
                            name: 'Alexander',
                            leadingImage: personImage,
                          ),
                        ),
                      );
                    },
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
