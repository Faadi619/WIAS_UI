import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:wias/Core/Constants/Assets.dart';
import 'package:wias/Core/Constants/Colors.dart';
import 'package:wias/Core/Constants/TextStyles.dart';
import 'package:wias/UI/CustomWidgets/GlobalAppBackgroundWidget.dart';
import 'package:wias/UI/CustomWidgets/SearchBarWidget.dart';
import 'package:wias/UI/Screens/PersonDetailsScreen/PersonDetailsScreen.dart';

TextEditingController searchScreenController = TextEditingController();

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();

    myFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalAppBackgroundWidget(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(width: 20.w),
                  SearchBarWidget(
                    searchController: searchScreenController,
                    myFocusNode: myFocusNode,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: ListView.builder(
                    itemCount: 16,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            () => PersonDetailsScreen(
                              index: index,
                              personType: 'Trusted',
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      personImage,
                                      width: 50.w,
                                      height: 50.w,
                                    ),
                                    SizedBox(width: 15.w),
                                    poppinsText(
                                      text: 'Alexander',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 24.sp,
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Divider(color: greyColor.withOpacity(0.5)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
